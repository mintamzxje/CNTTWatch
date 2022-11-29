<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMT.Master"AutoEventWireup="true" CodeBehind="QuanLyTaiKhoan.aspx.cs" Inherits="CNTT_Watch.Admin.QuanLyTaiKhoan" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="Style/styleTT.css"/>
    <link href='https://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet'>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    
    <div style="display: flex; justify-content: center; padding-bottom: 20px; margin-left:50px">
        <table style="width:550px;">
            <tr>
                <td colspan="2" align="center">
                    <p class="header-text" style="font-size: 30px"><b>Quản Lý Tài Khoản</b></p>
                </td>
            </tr>
            <tr>
                <td><b>Tên đăng nhập:</b></td>
                <td><asp:TextBox CssClass="textbox" ID="txtUsername" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><b>Tên:</b></td>
                <td><asp:TextBox CssClass="textbox" ID="txtTen" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><b>Họ:</b></td>
                <td><asp:TextBox CssClass="textbox" ID="txtHo" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><b>Email:</b></td>
                <td><asp:TextBox CssClass="textbox" ID="txtEmail" runat="server"></asp:TextBox></td>
            </tr>
            
            
            <tr>
                <td><b>Mật khẩu</b></td>
                <td><asp:TextBox CssClass="textbox" ID="txtPassword" runat="server" Enabled="false" Text="nguoidungmoi"></asp:TextBox></td>
            </tr>
            <tr>
                <td><b>Trạng thái:</b></td>
                <td style="align-content:center;">
                    <asp:RadioButtonList ID="rdbChucVu" CssClass="radio" runat="server" RepeatDirection="Horizontal"> 
                        <asp:ListItem Value="true">Admin</asp:ListItem>
                        <asp:ListItem Value="false">User</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td style="text-align:center" colspan="2">
                <asp:Button CssClass="button" ID="btnThem" runat="server" Text="Thêm" OnClick="btnThem_Click"/>
                <asp:Button CssClass="button" ID="btnSua" runat="server" Text="Cập nhật" Onclick="btnSua_Click" />
                <asp:Button CssClass="button" ID="btnXoa" runat="server" Text="Xóa" OnClick="btnXoa_Click" />
                <asp:Button CssClass="button" ID="btnLamTrang" runat="server" Text="Làm trắng" OnClick="btnLamTrang_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <div style="padding-bottom:20px; width: 816px;" align="center">
                    <asp:TextBox CssClass="textbox" ID="txtTim" runat="server" placeholder="Tìm kiếm..." TextMode="Search"></asp:TextBox>
                    <asp:Button CssClass="button" ID="btnTim" runat="server" Onclick="btnTim_Click" Text="Tìm" />
                </div>
                <div style="overflow:auto;">
                    <asp:GridView style="text-align:left;" 
                        ID="gwAccount" runat="server" 
                        AutoGenerateColumns="False" 
                        CellPadding="3"
                        ForeColor="#333333" 
                        Width="780px" OnSelectedIndexChanged="gwAccount_SelectedIndexChanged" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                        <Columns>
                            <asp:BoundField DataField="UserName" HeaderText="Tên đăng nhập" >
                                <HeaderStyle Font-Names="quicksand" Font-Size="18px" />
                                <ItemStyle Font-Names="quicksand" Font-Size="18px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="LastName" HeaderText="Tên" >
                                <HeaderStyle Font-Names="quicksand" Font-Size="18px" />
                                <ItemStyle Font-Names="quicksand" Font-Size="18px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FirstName" HeaderText="Họ" >
                                <HeaderStyle Font-Names="quicksand" Font-Size="18px" />
                                <ItemStyle Font-Names="quicksand" Font-Size="18px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Email" HeaderText="Địa chỉ Email" >
                                <HeaderStyle Font-Names="quicksand" Font-Size="18px" />
                                <ItemStyle Font-Names="quicksand" Font-Size="18px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PassWord" HeaderText="Mật khẩu">
                                <HeaderStyle Font-Names="quicksand" Font-Size="18px" />
                                <ItemStyle Font-Names="quicksand" Font-Size="18px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Type" HeaderText="Trạng thái" >
                                <HeaderStyle Font-Names="quicksand" Font-Size="18px" />
                                <ItemStyle Font-Names="quicksand" Font-Size="18px" />
                            </asp:BoundField>
                            <asp:CommandField HeaderText="Chọn" ShowSelectButton="True" >
                                <HeaderStyle Font-Names="quicksand" Font-Size="18px" />
                                <ItemStyle Font-Names="quicksand" Font-Size="18px" />
                            </asp:CommandField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF"/>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Wrap="False" HorizontalAlign="Center" />
                        <PagerStyle BackColor="#2461BF" ForeColor="#000066" HorizontalAlign="Left" Wrap="False" />
                        <RowStyle BackColor="#EFF3FB" Wrap="False" ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    </div>
                </td>
            </tr>
        </table>
        </div>
</asp:Content>
