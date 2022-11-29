using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CNTT_Watch.Admin
{
    public partial class SuaSanPham : System.Web.UI.Page
    {
        CNTTWATCHDataContext kn = new CNTTWATCHDataContext();
        public int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = int.Parse(Request.QueryString[0].ToString());
            if (!IsPostBack)
            {
                if (id != 0)
                {
                    load_ListCategory();
                    load_DataWatch();
                }
            }
        }
        public void load_ListCategory()
        {
            var q = from lc in kn.Categories
                    select lc;
            listThuongHieu.DataSource = q;
            listThuongHieu.DataValueField = "ID";
            listThuongHieu.DataTextField = "NameCategory";
            listThuongHieu.SelectedIndex = 6;
            listThuongHieu.DataBind();
        }
        public void load_DataWatch()
        {
            var q = (from w in kn.Watches
                     where w.ID == id
                     select w);
            foreach (var watch in q)
            {
                txtName.Text = watch.Name;
                listThuongHieu.SelectedValue = watch.CategoryID.ToString();
                txtSoLuong.Text = watch.SoLuong.ToString();
                txtGia.Text = watch.Gia.ToString();
                txtGiamGia.Text = watch.GiamGia.ToString();
                txtBaoHanh.Text = watch.BaoHanh;
                txtKieuMay.Text = watch.KieuMay;
                listGioiTinh.SelectedValue = watch.GioiTinh;
                txtKichCo.Text = watch.KichCo;
                txtDoDay.Text = watch.DoDay;
                txtChatLieuVo.Text = watch.ChatLieuVo;
                txtChatLieuDay.Text = watch.ChatLieuDay;
                txtChatLieuKinh.Text = watch.ChatLieuKinh;
                txtChucNang.Text = watch.ChucNang;
                txtDoChiuNuoc.Text = watch.ChongNuoc;
                txtMoTa.Value = watch.Mota;
                listType.SelectedValue = watch.type.ToString();
                img.Src = "~/Image/Watch/" + watch.HinhAnh;
            }
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            var q = (from w in kn.Watches
                     where w.ID == id
                     select w);
            foreach (var watch in q)
            {
                watch.Name = txtName.Text;
                watch.CategoryID = int.Parse(listThuongHieu.SelectedValue);
                watch.SoLuong = int.Parse(txtSoLuong.Text);
                watch.Gia = int.Parse(txtGia.Text);
                watch.GiamGia = int.Parse(txtGiamGia.Text);
                watch.BaoHanh = txtBaoHanh.Text;
                watch.KieuMay = txtKieuMay.Text;
                watch.GioiTinh = listGioiTinh.SelectedValue;
                watch.KichCo = txtKichCo.Text;
                watch.DoDay = txtDoDay.Text;
                watch.ChatLieuVo = txtChatLieuVo.Text;
                watch.ChatLieuDay = txtChatLieuDay.Text;
                watch.ChatLieuKinh = txtChatLieuKinh.Text;
                watch.ChucNang = txtChucNang.Text;
                watch.ChongNuoc = txtDoChiuNuoc.Text;
                watch.XuatXu = "NULL";
                watch.Mota = txtMoTa.Value;
                watch.type = int.Parse(listType.SelectedValue).ToString();
                if (fileUpload.HasFile)
                {
                    string filePath = Server.MapPath("~/Image/Watch/");
                    fileUpload.SaveAs(filePath + id + Path.GetExtension(fileUpload.FileName));
                    watch.HinhAnh = id + Path.GetExtension(fileUpload.FileName);
                }
                kn.SubmitChanges();
                showMessage("Cập nhật sản phẩm thành công");
            }

        }
        public void showMessage(string mess)
        {
            string strBuilder = "<script language = 'javascript'>alert('" + mess + "')</script>";
            Response.Write(strBuilder);
        }
    }
}