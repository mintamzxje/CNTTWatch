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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="box">
            &nbsp;<img class="logosize" src="Image/CNTT WATCH.png" alt="" /><h1 class="header">Đăng Ký</h1>
            <asp:TextBox class="text" ID="txtUsername" placeholder="Nhập Tên Đăng Nhập" runat="server"></asp:TextBox>
            <asp:TextBox class="text" ID="txtEmail" TextMode="Email" placeholder="Nhập Email" runat="server"></asp:TextBox>
            <asp:TextBox class="text" ID="txtPassword1" placeholder="Nhập Mật Khẩu" runat="server"></asp:TextBox>
            <asp:TextBox class="text" ID="txtPassword2" placeholder="Nhập Lại Mật khẩu" runat="server"></asp:TextBox>
            <asp:Button class="btn" ID="btnDangky" runat="server" Text="Đăng Ký" OnClick="btnDangky_Click"/>
            <asp:LinkButton class="btn" ID="btnBack" runat="server" Text="Bạn đã có tài khoản?" OnClick="btnBack_Click"/>
          
        </div>
    </form>
</body>
</html>
