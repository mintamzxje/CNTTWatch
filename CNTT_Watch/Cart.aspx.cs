using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CNTT_Watch
{
    public partial class Cart : System.Web.UI.Page
    {
        CNTTWATCHDataContext kn = new CNTTWATCHDataContext();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Watch> list = (List<Watch>)Session["Cart"];
            dt.Columns.Add("ID");
            dt.Columns.Add("Name");
            dt.Columns.Add("HinhAnh");
            dt.Columns.Add("Gia");
            dt.Columns.Add("SoLuong");
            if (list != null)
            {
                float s = 0;
                for (int i = 0; i < list.Count; i++)
                {
                    DataRow workRow = dt.NewRow();
                    workRow[0] = list[i].ID;
                    workRow[1] = list[i].Name;
                    workRow[2] = list[i].HinhAnh;
                    workRow[3] = ((float)((list[i].Gia - list[i].Gia * list[i].GiamGia / 100.0) / 100000) * 100000);
                    workRow[4] = list[i].SoLuong;
                    dt.Rows.Add(workRow);
                    s = (float)(s + ((float)((list[i].Gia - list[i].Gia * list[i].GiamGia / 100.0) / 100000) * 100000) * list[i].SoLuong);
                }
                lbTamTinh.Text = s.ToString("N0");
            }
            if (!Page.IsPostBack)
            {
                dlCart.DataSource = dt;
                dlCart.DataBind();
            }
        }
        protected void txtHoTen_TextChanged(object sender, EventArgs e)
        {
            if (txtHoTen.Text == "")
            {
                Response.Write("<script>alert('Họ và tên không được để trống');</script>");
                return;
            }
        }

        protected void txtSDT_TextChanged(object sender, EventArgs e)
        {
            if (txtSDT.Text == "")
            {
                Response.Write("<script>alert('Số điện thoại không được để trống');</script>");
                return;
            }
        }

        protected void txtDiaChi_TextChanged(object sender, EventArgs e)
        {
            if (txtDiaChi.Text == "")
            {
                Response.Write("<script>alert('Địa chỉ không được để trống');</script>");
                return;
            }
        }

        protected void btnUpdateCart_Click(object sender, EventArgs e)
        {
            List<Watch> list = (List<Watch>)Session["Cart"];
            if (list != null)
            {
                for (int i = 0; i < list.Count; i++)
                {
                    TextBox tb = (TextBox)dlCart.Items[i].FindControl("txtSoLuong");
                    int soluong = int.Parse(tb.Text);
                    if (soluong <= 0)
                    {
                        dlCart.DataSource = dt;
                        dlCart.DataBind();
                        Response.Write("<script>alert('Số lượng phải lớn hơn 0');</script>");
                        return;
                    }
                    else
                    {
                        list[i].SoLuong = soluong;
                    }
                }
            }
            Response.Redirect(Request.RawUrl);
        }

        protected void btRemove_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            DataListItem item = (DataListItem)btn.NamingContainer;
            int index = item.ItemIndex;
            List<Watch> list = (List<Watch>)Session["Cart"];
            if (list != null)
            {
                list.RemoveAt(index);
            }
            Response.Redirect(Request.RawUrl);
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            if (txtHoTen.Text == "" || txtSDT.Text == "" || txtDiaChi.Text == "")
            {
                Response.Write("<script>alert('Phải điền đầy đủ thông tin khách hàng');</script>");
                return;
            }
            var q = from order in kn.Orders
                    select order;
            int checkID = q.Count();
            Order o = new Order();
            if (checkID.Equals(0))
            {
                o.ID = 1;
            }
            else
            {
                int orderID = kn.Orders.Max(id => id.ID);
                kn.SubmitChanges();
                o.ID = orderID + 1;
            }
            o.NgayDatHang = DateTime.Now;
            o.NgayXacNhan = DateTime.Now;
            o.State = false;
            o.TenKhachHang = txtHoTen.Text;
            o.SDT = txtSDT.Text;
            o.DiaChi = txtDiaChi.Text;
            kn.Orders.InsertOnSubmit(o);
            kn.SubmitChanges();
            List<Watch> list = (List<Watch>)Session["Cart"];
            if (list != null)
            {
                for (int i = 0; i < list.Count; i++)
                {
                    int IDOrder = kn.Orders.Max(id => id.ID);
                    kn.SubmitChanges();
                    OrderDetail od = new OrderDetail();
                    od.OrderID = IDOrder;
                    od.WatchID = list[i].ID;
                    od.Gia = ((float)((list[i].Gia - list[i].Gia * list[i].GiamGia / 100.0) / 100000) * 100000);
                    od.SoLuong = list[i].SoLuong;
                    kn.OrderDetails.InsertOnSubmit(od);
                    kn.SubmitChanges();
                    var q1 = (from w in kn.Watches
                             where w.ID == list[i].ID
                             select w);
                    foreach (var watch in q1)
                    {
                        watch.SoLuong = watch.SoLuong - list[i].SoLuong;
                        kn.SubmitChanges();
                    }
                }
                Session["Cart"] = null;
                Response.Redirect(Request.RawUrl);
                showMessage("Đặt Hàng Thành Công");
            }
        }
        public void showMessage(string mess)
        {
            string strBuilder = "<script language = 'javascript'>alert('" + mess + "')</script>";
            Response.Write(strBuilder);
        }
    }
}