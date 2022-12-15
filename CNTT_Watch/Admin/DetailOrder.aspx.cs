using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CNTT_Watch.Admin
{
    public partial class DetailOrder : System.Web.UI.Page
    {
        CNTTWATCHDataContext kn = new CNTTWATCHDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null || (int)Session["admin"] == 0)
            {
                Response.Write("<script>alert('Bạn Không Có Quyền Truy Cập');</script>");
                Response.Redirect("~/Login.aspx");
            }
            var q = from DetailOrder in kn.OrderDetails
                    join Watch in kn.Watches on DetailOrder.WatchID equals Watch.ID
                    where DetailOrder.OrderID == int.Parse(Request.QueryString[0])
                    select new
                    {
                        Name = Watch.Name,
                        HinhAnh = Watch.HinhAnh,
                        WatchID = Watch.ID,
                        Gia = DetailOrder.Gia,
                        SoLuong = DetailOrder.SoLuong
                    }; 
            dlDetailOrder.DataSource = q;
            dlDetailOrder.DataBind();
        }

        protected void btnDuyet_Click(object sender, EventArgs e)
        {
            var q = (from Order in kn.Orders
                     where Order.ID == int.Parse(Request.QueryString[0])
                     select Order);
            foreach (var Order in q)
            {
                Order.NgayXacNhan = DateTime.Now;
                Order.State = true;
                kn.SubmitChanges();
                Response.Redirect("Orders.aspx");
            }
        }

        protected void btnHuyDuyet_Click(object sender, EventArgs e)
        {
            var q = (from Order in kn.Orders
                     where Order.ID == int.Parse(Request.QueryString[0])
                     select Order);
            foreach (var Order in q)
            {
                Order.State = false;
                kn.SubmitChanges();
                Response.Redirect("Orders.aspx");
            }
        }
    }
}