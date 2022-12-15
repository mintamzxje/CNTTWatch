<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMT.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="CNTT_Watch.Admin.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .tb {
            width: 100%;
        }
        .tb tr td{
            height:40px;
            vertical-align:central;
        }
        .td1{
            background-color:#6D6E71;
            color:white;
            border-bottom:3px solid;
        }
        .td2{
            background-color:#EDEDED;
            border-bottom:2px solid;
            border-color:white;
        }
        .txt{
            height:30px;
            width:500px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="tb">
        <tr>
            <td class="td1" style="width:150px;">&nbsp;UserName</td>
            <td>
                &nbsp;<asp:Label ID="lblUserName" CssClass="txt" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="td1">&nbsp;FirstName</td>
            <td>
                &nbsp;<asp:TextBox CssClass="txt" ID="txtFirstName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td1">&nbsp;LastName</td>
            <td>
                &nbsp;<asp:TextBox CssClass="txt" ID="txtLastName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td1">&nbsp;Email</td>
            <td>
                &nbsp;<asp:TextBox CssClass="txt" ID="txtEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
               <asp:Button ID="btnUpdate" runat="server"  Text="Cập Nhật" style="width:100px;height:50px;background-color:blue;color:white;" OnClick="btnUpdate_Click" />
            </td>
        </tr>

    </table>
</asp:Content>
