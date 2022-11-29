﻿using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CNTT_Watch.Admin
{
    public partial class Orders : System.Web.UI.Page
    {
        CNTTWATCHDataContext kn = new CNTTWATCHDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            var q = from Order in kn.Orders
                    select Order;
            gvOrders.DataSource = q;
            gvOrders.DataBind();
            for (int i = 0; i < gvOrders.Rows.Count; i++)
            {
                if (gvOrders.Rows[i].Cells[3].Text == "False")
                {
                    gvOrders.Rows[i].Cells[2].Text = "";
                    gvOrders.Rows[i].Cells[3].Text = "Chưa duyệt";
                    gvOrders.Rows[i].Cells[3].ForeColor = Color.Red;
                }
                else
                {
                    gvOrders.Rows[i].Cells[3].Text = "Đã duyệt";
                    gvOrders.Rows[i].Cells[3].ForeColor = Color.Blue;
                }
            }
        }
        protected void gvOrders_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Response.Redirect("DetailOrder.aspx?id=" + gvOrders.Rows[e.NewEditIndex].Cells[0].Text);
        }

        protected void gvOrders_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            var q1 = from OrderDetail in kn.OrderDetails
                     where OrderDetail.OrderID == int.Parse(gvOrders.Rows[e.RowIndex].Cells[0].Text)
                     select OrderDetail;
            foreach (var OrderDetail in q1)
            {
                kn.OrderDetails.DeleteOnSubmit(OrderDetail);
            }
            kn.SubmitChanges();
            var q2 = from Order in kn.Orders
                    where Order.ID == int.Parse(gvOrders.Rows[e.RowIndex].Cells[0].Text)
                    select Order;
            foreach (var Order in q2)
            {
                kn.Orders.DeleteOnSubmit(Order);
            }
            kn.SubmitChanges();
            Response.Redirect(Request.RawUrl);
        }
    }
}