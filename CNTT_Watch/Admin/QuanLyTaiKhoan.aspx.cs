using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CNTT_Watch.Admin
{
    public partial class QuanLyTaiKhoan : System.Web.UI.Page
    {
        CNTTWATCHDataContext kn = new CNTTWATCHDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                load_gwAccount();
                Page.DataBind();
            }
        }
        public void load_gwAccount()
        {
            var q = from ac in kn.Accounts
                    select ac;
            gwAccount.DataSource = q;
            gwAccount.DataBind();
        }
        public bool Check(string us)
        {
            var q = from ac in kn.Accounts
                    where ac.UserName == us
                    select ac;
            if (q.Any())
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        protected void btnThem_Click(object sender, EventArgs e)
        {
            if(Check(txtUsername.Text))
            {
                showMessage("Tên đăng nhập " + txtUsername.Text + " đã tồn tại");
                ClearData();
            }
            else
            {
                Account ac = new Account();
                ac.UserName = txtUsername.Text;
                ac.LastName = txtTen.Text;
                ac.FirstName = txtHo.Text;
                ac.Email = txtEmail.Text;
                ac.PassWord = txtPassword.Text;
                bool tt = Boolean.Parse(rdbChucVu.SelectedValue);
                if (tt == true)
                {
                    ac.Type = "Admin";
                }
                else
                {
                    ac.Type = "User";
                }
                kn.Accounts.InsertOnSubmit(ac);
                kn.SubmitChanges();
                load_gwAccount();
                showMessage("Đã tạo thành công tài khoản: " + txtUsername.Text);
                ClearData();
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            var q = from ac in kn.Accounts
                    where ac.UserName == txtUsername.Text
                    select ac;
            foreach (var ac in q)
            {
                ac.FirstName = txtHo.Text;
                ac.LastName = txtTen.Text;
                ac.Email = txtEmail.Text;
                bool tt = Boolean.Parse(rdbChucVu.SelectedValue);
                if (tt == true)
                {
                    ac.Type = "Admin";
                }
                else
                {
                    ac.Type = "User";
                }
                kn.SubmitChanges();
                load_gwAccount();
                showMessage("Đã cập nhật thông tin tài khoản: " + txtUsername.Text + " thành công");
                ClearData();
            }
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            var q = from ac in kn.Accounts
                    where ac.UserName == txtUsername.Text
                    select ac;
            foreach (var ac in q)
            {
                kn.Accounts.DeleteOnSubmit(ac);
            }
            kn.SubmitChanges();
            load_gwAccount();
            Page.DataBind();
            showMessage("Đã xóa tài khoản: " + txtUsername.Text);
            ClearData();
        }

        protected void btnLamTrang_Click(object sender, EventArgs e)
        {
            ClearData();
        }
        public void ClearData()
        {
            txtHo.Text = "";
            txtTen.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "nguoidungmoi";
            txtTim.Text = "";
            txtUsername.Text = "";
            rdbChucVu.ClearSelection();
        }

        protected void btnTim_Click(object sender, EventArgs e)
        {
            var q = from ac in kn.Accounts
                    where (ac.UserName).ToString().EndsWith(txtTim.Text)
                          || ac.Email.EndsWith(txtTim.Text)
                          || ac.FirstName.EndsWith(txtTim.Text)
                          || ac.LastName.EndsWith(txtTim.Text)
                    select ac;
            gwAccount.DataSource = q;
            gwAccount.DataBind();
        }

        protected void gwAccount_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                txtUsername.Text = HttpUtility.HtmlDecode(gwAccount.SelectedRow.Cells[0].Text).ToString();
                txtTen.Text = HttpUtility.HtmlDecode(gwAccount.SelectedRow.Cells[1].Text).ToString();
                txtHo.Text = HttpUtility.HtmlDecode(gwAccount.SelectedRow.Cells[2].Text).ToString();
                txtEmail.Text = HttpUtility.HtmlDecode(gwAccount.SelectedRow.Cells[3].Text).ToString();
                txtPassword.Text = HttpUtility.HtmlDecode(gwAccount.SelectedRow.Cells[4].Text).ToString();
                string tt = gwAccount.SelectedRow.Cells[5].Text;
                if (tt == "Admin")
                {
                    rdbChucVu.ClearSelection();
                    rdbChucVu.Items.FindByValue("true").Selected = true;
                }
                if (tt == "User")
                {
                    rdbChucVu.ClearSelection();
                    rdbChucVu.Items.FindByValue("false").Selected = true;
                }

            }
            catch (Exception)
            {
               
            }
        }
        public void showMessage(string mess)
        {
            string strBuilder = "<script language = 'javascript'>alert('" + mess + "')</script>";
            Response.Write(strBuilder);
        }
    }
}