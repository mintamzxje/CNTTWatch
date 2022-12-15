<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMT.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="CNTT_Watch.Admin.Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="gvOrders" runat="server" AutoGenerateColumns="False" OnRowDeleting="gvOrders_RowDeleting" OnRowEditing="gvOrders_RowEditing" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
            <asp:BoundField HeaderText="ID" DataField="ID" ItemStyle-Width="30px" ItemStyle-HorizontalAlign="Center" >
<ItemStyle HorizontalAlign="Center" Width="30px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField HeaderText="Ngày nhận đơn" DataField="NgayDatHang" DataFormatString="{0:dd-MM-yyyy HH:mm}"  ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center" Width="150px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField HeaderText="Ngày duyệt đơn" DataField="NgayXacNhan" DataFormatString="{0:dd-MM-yyyy HH:mm}"  ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center" Width="150px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField HeaderText="Trạng thái" DataField="State"  ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center" Width="150px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField HeaderText="Tên KH" DataField="TenKhachHang"  ItemStyle-Width="150px">
<ItemStyle Width="150px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField HeaderText="SĐT KH" DataField="SDT" ItemStyle-Width="150px">
<ItemStyle Width="150px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField HeaderText="Địa chỉ KH" DataField="DiaChi" ItemStyle-Width="200px">
<ItemStyle Width="200px"></ItemStyle>
            </asp:BoundField>
            <asp:CommandField EditText="XEM" ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle Height="30px" BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
</asp:Content>
