<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMT.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="CNTT_Watch.Admin.Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="gvOrders" runat="server" AutoGenerateColumns="False" OnRowDeleting="gvOrders_RowDeleting" OnRowEditing="gvOrders_RowEditing">
        <Columns>
            <asp:BoundField HeaderText="ID" DataField="ID" ItemStyle-Width="30px" ItemStyle-HorizontalAlign="Center" />
            <asp:BoundField HeaderText="Ngày nhận đơn" DataField="NgayDatHang" DataFormatString="{0:dd-MM-yyyy HH:mm}"  ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField HeaderText="Ngày duyệt đơn" DataField="NgayXacNhan" DataFormatString="{0:dd-MM-yyyy HH:mm}"  ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField HeaderText="Trạng thái" DataField="State"  ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Center"/>
            <asp:BoundField HeaderText="Tên KH" DataField="TenKhachHang"  ItemStyle-Width="150px"/>
            <asp:BoundField HeaderText="SĐT KH" DataField="SDT" ItemStyle-Width="150px"/>
            <asp:BoundField HeaderText="Địa chỉ KH" DataField="DiaChi" ItemStyle-Width="200px"/>
            <asp:CommandField EditText="XEM" ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <RowStyle Height="30px" />
    </asp:GridView>
</asp:Content>
