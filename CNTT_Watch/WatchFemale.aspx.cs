using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CNTT_Watch
{
    public partial class WatchFemale : System.Web.UI.Page
    {
        CNTTWATCHDataContext kn = new CNTTWATCHDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            var q = (from w in kn.Watches
                     where w.GioiTinh == "Nữ"
                     select new
                     {
                         Gia2 = w.Gia - w.Gia * w.GiamGia / 100,
                         Gia = w.Gia,
                         GiamGia = w.GiamGia,
                         Name = w.Name,
                         ID = w.ID,
                         HinhAnh = w.HinhAnh
                     });
            dlWatchFemale.DataSource = q;
            dlWatchFemale.DataBind();
        }
    }
}