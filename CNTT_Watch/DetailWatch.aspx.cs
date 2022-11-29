using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CNTT_Watch
{
    public partial class DetailWatch : System.Web.UI.Page
    {
        CNTTWATCHDataContext kn = new CNTTWATCHDataContext();
        public string HinhAnh;
        public int ID;
        protected void Page_Load(object sender, EventArgs e)
        {
            Category category = new Category();
            ID = int.Parse(Request.QueryString[0].ToString());
            Watch w = ShowDetailWatch(ID);
            var q = from ct in kn.Categories
                    where ct.ID == w.CategoryID
                    select ct;
            foreach(var ct in q)
            {
                category.NameCategory = ct.NameCategory;
            }    
            HinhAnh = w.HinhAnh;
            lbName.Text = w.Name;
            lbGia.Text = w.Gia.ToString("N0");
            lbGia2.Text = (Math.Round((double)((w.Gia - w.Gia * w.GiamGia / 100.0) / 100000), 0) * 100000).ToString("N0");
            lbBaoHanh.Text = w.BaoHanh;
            lbThuongHieu.Text = category.NameCategory;
            lbXuatXu.Text = w.XuatXu;
            lbKieuMay.Text = w.KieuMay;
            lbGioiTinh.Text = w.GioiTinh;
            lbKichCo.Text = w.KichCo;
            lbDoDay.Text = w.DoDay;
            lbChatLieuVo.Text = w.ChatLieuVo;
            lbChatLieuDay.Text = w.ChatLieuDay;
            lbChatLieuKinh.Text = w.ChatLieuKinh;
            lbChucNang.Text = w.ChucNang;
            lbDoChiuNuoc.Text = w.ChongNuoc;
            lbGiamGia.Text = "-" + w.GiamGia + "%";
            btSua.Visible = false;
            btXoa.Visible = false;
        }
        public Watch ShowDetailWatch(int ID)
        {
            Watch watch = new Watch();
            var q = (from w in kn.Watches
                     where w.ID == ID
                     select w);
            foreach (var w in q)
            {
                watch.HinhAnh = w.HinhAnh;
                watch.Name = w.Name;
                watch.Gia = w.Gia;
                watch.BaoHanh = w.BaoHanh;
                watch.CategoryID = w.CategoryID;
                watch.XuatXu = w.XuatXu;
                watch.KieuMay = w.KieuMay;
                watch.GioiTinh = w.GioiTinh;
                watch.KichCo = w.KichCo;
                watch.DoDay = w.DoDay;
                watch.ChatLieuVo = w.ChatLieuVo;
                watch.ChatLieuDay = w.ChatLieuDay;
                watch.ChatLieuKinh = w.ChatLieuKinh;
                watch.ChucNang = w.ChucNang;
                watch.ChongNuoc = w.ChongNuoc;
                watch.GiamGia = w.GiamGia;
            }
            return watch;
        }
        protected void btndathang_Click(object sender, EventArgs e)
        {
            List<Watch> list;
            if (Session["Cart"] == null)
                list = new List<Watch>();
            else
            {
                list = (List<Watch>)Session["Cart"];
            }
            bool trung = false;
            Watch w = ShowDetailWatch(ID);
            w.ID = ID;
            w.SoLuong = 1;
            for (int i = 0; i < list.Count; i++)
            {
                if (list[i].ID == w.ID)
                    trung = true;
            }
            if (trung)
            {
                Response.Write("<script>alert('Sản phẩm đã có trong giỏ');</script>");
            }
            else
            {
                list.Add(w);
                Session["Cart"] = list;
                Response.Redirect("Cart.aspx");
            }
        }

        protected void btSua_Click(object sender, EventArgs e)
        {

        }

        protected void btXoa_Click(object sender, EventArgs e)
        {

        }
    }
}