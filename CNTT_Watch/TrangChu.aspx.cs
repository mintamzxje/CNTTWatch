using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CNTT_Watch
{
    public partial class TrangChu : System.Web.UI.Page
    {
        CNTTWATCHDataContext kn = new CNTTWATCHDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowHotSale();
            ShowSEIKO();
            ShowCASIO();
            ShowORIENT();
            ShowCITIZENT();
            
        }
        public void ShowHotSale()
        {
            var q = (from w in kn.Watches
                     where w.GiamGia >= 40
                     select new
                     {
                         Gia2 = w.Gia - w.Gia * w.GiamGia / 100,
                         Gia = w.Gia,
                         GiamGia = w.GiamGia,
                         Name = w.Name,
                         ID = w.ID,
                         HinhAnh = w.HinhAnh
                     }).Take(4);
            dlHotSale.DataSource = q;
            dlHotSale.DataBind();

        }
        public void ShowSEIKO()
        {
            var q = (from w in kn.Watches
                     where w.CategoryID == 1
                     select new
                     {
                         Gia2 = w.Gia - w.Gia * w.GiamGia / 100,
                         Gia = w.Gia,
                         GiamGia = w.GiamGia,
                         Name = w.Name,
                         ID = w.ID,
                         HinhAnh = w.HinhAnh
                     });
            dlSEIKO.DataSource = q;
            dlSEIKO.DataBind();
        }
        public void ShowCASIO()
        {
            var q = (from w in kn.Watches
                     where w.CategoryID == 2
                     select new
                     {
                         Gia2 = w.Gia - w.Gia * w.GiamGia / 100,
                         Gia = w.Gia,
                         GiamGia = w.GiamGia,
                         Name = w.Name,
                         ID = w.ID,
                         HinhAnh = w.HinhAnh
                     });
            dlCASIO.DataSource = q;
            dlCASIO.DataBind();
        }
        public void ShowORIENT()
        {
            var q = (from w in kn.Watches
                     where w.CategoryID == 3
                     select new
                     {
                         Gia2 = w.Gia - w.Gia * w.GiamGia / 100,
                         Gia = w.Gia,
                         GiamGia = w.GiamGia,
                         Name = w.Name,
                         ID = w.ID,
                         HinhAnh = w.HinhAnh
                     });
            dlORIENT.DataSource = q;
            dlORIENT.DataBind();
        }
        public void ShowCITIZENT()
        {
            var q = (from w in kn.Watches
                     where w.CategoryID == 4
                     select new
                     {
                         Gia2 = w.Gia - w.Gia * w.GiamGia / 100,
                         Gia = w.Gia,
                         GiamGia = w.GiamGia,
                         Name = w.Name,
                         ID = w.ID,
                         HinhAnh = w.HinhAnh
                     });
            dlCITIZENT.DataSource = q;
            dlCITIZENT.DataBind();
        }
        //public void ShowCITIZENT1()
        //{
        //    var q = (from w in kn.Watches
        //             where w.CategoryID == 4
        //             select new {
        //                Gia2 = w.Gia - w.Gia * w.GiamGia / 100,
        //                Gia = w.Gia,
        //                Name = w.Name,
        //                ID = w.ID,
        //                HinhAnh = w.HinhAnh
        //             });
        //    dlCITIZENT.DataSource = q;
        //    dlCITIZENT.DataBind();
        //}
    }
}