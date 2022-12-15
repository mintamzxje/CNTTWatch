<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CNTT_Watch.Register" %>

<!DOCTYPE html>

<html> 
<head> 
    <title>REGISTER</title>
    <style type="text/css">
        body {
    margin: 0px;
    padding: 0px;
    font-family: sans-serif;
    background: #00ffff;
}
.box{
    width: 300px;
    padding: 40px;
    position: absolute;
    top: 54%;
    left: 50%;
    transform: translate(-50%, -50%);
    background:White;
    text-align: center;
    box-shadow: 5px 7px 20px rgb(140, 140, 140);
    height: 536px;
    border-radius: 10px;
}
.text{
    border: none;
    background: none;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid #3498db;
    padding: 10px 10px;
    width: 200px;
    outline: none;
    color: #6080BF;
    border-radius: 8px;
    transition: 0.25s;
    font-size: 15px;
}
.header{
    font-weight: 500;
    color: #6080BF;
}
.text:focus,.text:valid{
    width: 250px;
    border-color: #2ecc71;
}
.btn{
    border: 0px;
    background: none;
    display: block;
    margin: 20px auto;
    border: 2px solid #2ecc71;
    padding: 10px;
    outline: none;
    border-radius: 8px;
    transition: 0.25s;
    width: 150px;
    font-size: 15px;
}
.btn:hover{
    border: #6080BF;
    background: #6080BF;
    width: 200px;
}
.logosize{
    padding-top:  2px;
    height: 100px;
    width: 148px;
            margin-top: 0px;
        }
        .auto-style1 {
            width: 722px;
            padding: 40px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background: White;
            text-align: center;
            box-shadow: 5px 7px 20px rgb(140, 140, 140);
            height: 536px;
            border-radius: 10px;
            align-content:center
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" align="center">
            &nbsp;<img class="logosize" src="Image/CNTT WATCH.png" alt="" /><h1 class="header">Đăng Ký</h1>
            <table align="center">
                <tr>
                    <td>
                        <asp:TextBox class="text" ID="txtUserName" placeholder="Enter UserName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox class="text" ID="txtEmail" TextMode="Email" placeholder="Enter Email" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox class="text" ID="txtFirstName" placeholder="Enter FirstName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox class="text" ID="txtLastName" placeholder="Enter LastName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox class="text" ID="txtPassword1" placeholder="Enter PassWord" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox class="text" ID="txtPassword2" placeholder="Enter RePassWord" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button class="btn" ID="btnDangky" runat="server" Text="Register" OnClick="btnDangky_Click"/>
                    </td>
                    <td>
                        <asp:Button class="btn" ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
