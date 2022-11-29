using CNTT_Watch.Admin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CNTT_Watch
{
    public partial class Login : System.Web.UI.Page
    {
        CNTTWATCHDataContext kn = new CNTTWATCHDataContext();
        public bool kiemtra(string tdn, string mk)
        {
            var q = from ac in kn.Accounts
                    where ac.UserName == txtTenDN.Text && ac.PassWord == txtPassword.Text
                    select new { ac.UserName, ac.PassWord };
            return q.Any();
        }
        public bool phanquyen(string tdn)
        {
            var q = from ac in kn.Accounts
                    where ac.UserName == txtTenDN.Text && ac.Type == "Admin"
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
        public void showMessage(string mess)
        {
            string strBuilder = "<script language = 'javascript'>alert('" + mess + "')</script>";
            Response.Write(strBuilder);
        }
        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            Session["username"] = txtTenDN.Text;
            if (kiemtra(txtTenDN.Text, txtPassword.Text))
            {
                if (txtPassword.Text == "nguoidungmoi")
                {
                    Response.Redirect("DoiMatKhau.aspx");
                }
                else
                {
                    if (phanquyen(txtTenDN.Text))
                    {
                        Response.Redirect("Admin/QuanLyTaiKhoan.aspx");
                    }
                    else
                    {
                        Response.Redirect("TrangChu.aspx");
                    }
                }
            }
            else
            {
                showMessage("Tên đăng nhập hoặc mật khẩu không đúng.Xin vui lòng nhập lại!");
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}