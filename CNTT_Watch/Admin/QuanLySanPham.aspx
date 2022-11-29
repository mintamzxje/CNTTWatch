<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMT.Master" AutoEventWireup="true" CodeBehind="QuanLySanPham.aspx.cs" Inherits="CNTT_Watch.Admin.QuanLySanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="LinqDataSource1" >
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="GioiTinh" HeaderText="GioiTinh" SortExpression="GioiTinh" />
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
            <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
            <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
            <asp:BoundField DataField="GiamGia" HeaderText="GiamGia" SortExpression="GiamGia" />
            <asp:BoundField DataField="HinhAnh" HeaderText="HinhAnh" SortExpression="HinhAnh" />
            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
            <asp:BoundField DataField="BaoHanh" HeaderText="BaoHanh" SortExpression="BaoHanh" />
            <asp:BoundField DataField="KieuMay" HeaderText="KieuMay" SortExpression="KieuMay" />
            <asp:BoundField DataField="XuatXu" HeaderText="XuatXu" SortExpression="XuatXu" />
            <asp:BoundField DataField="KichCo" HeaderText="KichCo" SortExpression="KichCo" />
            <asp:BoundField DataField="DoDay" HeaderText="DoDay" SortExpression="DoDay" />
            <asp:BoundField DataField="ChatLieuVo" HeaderText="ChatLieuVo" SortExpression="ChatLieuVo" />
            <asp:BoundField DataField="ChatLieuDay" HeaderText="ChatLieuDay" SortExpression="ChatLieuDay" />
            <asp:BoundField DataField="ChatLieuKinh" HeaderText="ChatLieuKinh" SortExpression="ChatLieuKinh" />
            <asp:BoundField DataField="ChucNang" HeaderText="ChucNang" SortExpression="ChucNang" />
            <asp:BoundField DataField="ChongNuoc" HeaderText="ChongNuoc" SortExpression="ChongNuoc" />
            <asp:BoundField DataField="Mota" HeaderText="Mota" SortExpression="Mota" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
            <asp:CommandField ShowDeleteButton="True" />
            <asp:HyperLinkField Text="Sửa" DataNavigateUrlFields="ID" DataNavigateUrlFormatString="~/Admin/SuaSanPham.aspx?id={0}" />
        </Columns>
    </asp:GridView>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="CNTT_Watch.CNTTWATCHDataContext" EntityTypeName="" TableName="Watches">
    </asp:LinqDataSource>
</asp:Content>
