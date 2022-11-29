<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CNTT_Watch.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOGIN</title>
    <style type="text/css">
        body {
    margin: 0px;
    padding: 0px;
    font-family: sans-serif;
    background: #00ffff;
}
.box{
    width: 300px;
    padding: 30px;
    position: absolute;
    top: 40%;
    left: 50%;
    transform: translate(-50%, -50%);
    background:White;
    text-align: center;
    /*color: white;*/
    box-shadow: 5px 7px 20px rgb(140, 140, 140);
    height: 450px;
    border-radius: 10px;
}
.text{
    border: none;
    background: none;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid #3498db;
    padding: 14px 10px;
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
    border: 2px solid #2ECC71;
    padding: 10px;
    outline: none;
    border-radius: 8px;
    transition: 0.25s;
    font-size: 15px;
}
.btn:hover{
    border: #6080BF;
    background: #6080BF;
    width: 200px;
    /*color: #ffffff;*/
}
.logosize{
    padding-top:  2px;
    height: 100px;
    width: 148px;
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="box">
            &nbsp;<img class="logosize" src="Image/CNTT WATCH.png" alt="" /><h1 class="header">Đăng Nhập</h1>
            <asp:TextBox class="text" ID="txtTenDN" placeholder="Tên đăng nhập" runat="server" required=""></asp:TextBox>
            <asp:TextBox class="text" ID="txtPassword" TextMode="Password" placeholder="Mật khẩu" runat="server" required=""></asp:TextBox>
            <asp:Button class="btn" ID="btnDangNhap" runat="server" Text="Đăng nhập" OnClick="btnDangNhap_Click"/>
            <asp:LinkButton class="btn" ID="btnDangKy" runat="server" Text="Đăng ký ngay!" OnClick="btnDangKy_Click" Width="160px" />
        </div>
    </form>
</body>
</html>
