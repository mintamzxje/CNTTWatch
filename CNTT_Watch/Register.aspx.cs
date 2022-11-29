using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CNTT_Watch
{
    public partial class Register : System.Web.UI.Page
    {
        CNTTWATCHDataContext kn = new CNTTWATCHDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

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
        public bool CheckNull()
        {
            if (txtUsername.Text.Equals(""))
            {
                showMessage("Chưa nhập UserName");
                return true;

            }
            if (txtEmail.Text.Equals(""))
            {
                showMessage("Chưa nhập Email");
                return true;
            }
            if (txtPassword1.Text.Equals(""))
            {
                showMessage("Chưa nhập PassWord");
                return true;
            }
            if (txtPassword2.Text.Equals(""))
            {
                showMessage("Chưa nhập PassWord");
                return true;
            }
            return false;
        }
        public void showMessage(string mess)
        {
            string strBuilder = "<script language = 'javascript'>alert('" + mess + "')</script>";
            Response.Write(strBuilder);
        }
        protected void btnDangky_Click(object sender, EventArgs e)
        {
            if (Check(txtUsername.Text))
            {
                showMessage("Tên đăng nhập " + txtUsername.Text + " đã tồn tại");
            }
            else
            {
                if(CheckNull())
                {
                    
                }  
                else
                {
                    Account ac = new Account();
                    ac.UserName = txtUsername.Text;
                    ac.Email = txtEmail.Text;
                    ac.Type = "User";
                    if (txtPassword1.Text.Equals(txtPassword2.Text))
                    {
                        ac.PassWord = txtPassword1.Text;
                        kn.Accounts.InsertOnSubmit(ac);
                        kn.SubmitChanges();
                        showMessage("Đã đăng ký thành công tài khoản: " + txtUsername.Text);
                    }
                    else
                    {
                        showMessage("Hai mật khẩu nhập vào không trùng nhau");
                    }
                }    
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");    
        }
    }
}