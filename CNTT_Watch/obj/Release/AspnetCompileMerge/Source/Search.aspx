<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="CNTT_Watch.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .link{
            color:red;
            text-decoration:none;
            margin:10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <center>
       <asp:Label ID="Label11" runat="server" Text="Search Box"></asp:Label>
         &nbsp  &nbsp
       <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
       <asp:Button ID="btnSearch" runat="server" ForeColor="Red" Text="Tìm Kiếm" OnClick="btnSearch_Click" />
    </center>
    <br />
    <asp:DataList ID="dltim" RepeatColumns="4" runat="server">
        <ItemTemplate>
            <div style="text-align:center;width:270px;height:350px;">
                <div style="position:absolute;"><img src="../Image/sale.png" width="50" /></div>
                <div style="position:absolute;height:50px;line-height:50px;">&nbsp<asp:Label ID="Label10" Text='<%#"-"+Eval("GiamGia")+"%"%>' ForeColor="White" Font-Size="15" runat="server"></asp:Label></div>
                <asp:HyperLink ID="HyperLink1" ImageUrl='<%#"~/Image/Watch/"+Eval("HinhAnh")%>' NavigateUrl='<%#"~/DetailWatch.aspx?id="+Eval("id")%>' CssClass="img" ImageWidth="100%" ImageHeight="280px" runat="server"></asp:HyperLink>
                <br /><div style="margin:0 30px;"><asp:HyperLink ID="HyperLink2" Text='<%#Eval("Name")%>' NavigateUrl='<%#"~/DetailWatch.aspx?id="+Eval("id")%>' ForeColor="Red" Font-Underline="false" runat="server"></asp:HyperLink></div>
                <span style="text-decoration:line-through;"><asp:Label ID="Label1" runat="server" Text='<%#Eval("gia","{0:0,0}")%>'></asp:Label>&nbsp;<span style="text-decoration:underline;">đ</span></span>&nbsp;
                <span style="font-weight:bold;"><asp:Label ID="Label2" runat="server" Text='<%#Eval("gia2","{0:0,0}")%>'></asp:Label>&nbsp;<span style="text-decoration:underline;">đ</span></span>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>


