using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CNTT_Watch.Admin
{
    public partial class Profile : System.Web.UI.Page
    {
        CNTTWATCHDataContext kn = new CNTTWATCHDataContext();
        string pw;
        string cv;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null || (int)Session["admin"] == 0)
            {
                Response.Write("<script>alert('Bạn Không Có Quyền Truy Cập');</script>");
                Response.Redirect("~/Login.aspx");
                
            }
            else
            {
                load_Frofile();
                Page.DataBind();
            }    
        }
        public void load_Frofile()
        {
            string us = (string)Session["username"];
            var q = from ac in kn.Accounts
                    where ac.UserName == us
                    select ac;
            foreach (var account in q)
            {
                lblUserName.Text = account.UserName;
                txtFirstName.Text = account.FirstName;
                txtLastName.Text = account.LastName;
                txtEmail.Text = account.Email;
                pw = account.PassWord;
                cv = account.Type;
            }
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            var q = from ac in kn.Accounts
                    where ac.UserName == lblUserName.Text
                    select ac;
            foreach (var ac in q)
            {
                ac.FirstName = txtFirstName.Text;
                ac.LastName = txtLastName.Text;
                ac.Email = txtEmail.Text;
                ac.PassWord = pw;
                ac.Type = cv;
                kn.SubmitChanges();
                Response.Write("<script>alert('"+ lblUserName.Text +"');</script>");
            }
        }
    }
}