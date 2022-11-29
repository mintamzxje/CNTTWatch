using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CNTT_Watch
{
    public partial class Search : System.Web.UI.Page
    {
        CNTTWATCHDataContext kn = new CNTTWATCHDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            showWatch();
        }
        public void showWatch()
        {
            var q = (from w in kn.Watches
                     select new
                     {
                         Gia2 = w.Gia - w.Gia * w.GiamGia / 100,
                         Gia = w.Gia,
                         GiamGia = w.GiamGia,
                         Name = w.Name,
                         ID = w.ID,
                         HinhAnh = w.HinhAnh
                     });
            dltim.DataSource = q;
            dltim.DataBind();
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if(txtSearch.Text.Length != 0)
            {
                var q = (from w in kn.Watches
                         where w.Name.StartsWith(txtSearch.Text) || w.Name.Contains(txtSearch.Text) || w.Name.EndsWith(txtSearch.Text)
                         select new
                         {
                             Gia2 = w.Gia - w.Gia * w.GiamGia / 100,
                             Gia = w.Gia,
                             GiamGia = w.GiamGia,
                             Name = w.Name,
                             ID = w.ID,
                             HinhAnh = w.HinhAnh
                         });
                dltim.DataSource = q;
                dltim.DataBind();
            }    
            else
            {
                showWatch();
            }    
        }
    }
}