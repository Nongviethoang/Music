<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="MusicWeb.DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
    <title>Đăng nhập</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <!-- CSS -->
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'/>
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Oleo+Script:400,700'/>
    <link rel="stylesheet" href="Admin/assets/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="Admin/assets/css/style.css"/>
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
    <div class="header">
        <div class="container">
            <div class="row">
                <div class="logo span4">
                    <h1><a href="TrangChu.aspx">Music4Life <span class="red"></span></a></h1>
               
            </div>
        </div>
    </div>
    <div class="register-container container">
        <div class="row">
            <div class="iphone span5">
                <img src="Admin/assets/img/iphone.png" alt=""/>
            </div>
            <div class="register span6">
                <form action="#" method="post" runat="server">
                    <h2>Đăng nhập</h2>
                    <label >Tên đăng nhập</label>
                    <asp:TextBox ID="username" runat="server" CssClass="form"></asp:TextBox>
                    <label >Mật khẩu</label>
                    <asp:TextBox ID="txtmatkhau" runat="server" CssClass="form"></asp:TextBox>
                   
                    <asp:Button ID="btnDangNhap" runat="server" Text="Đăng nhập" CssClass="btn btn-primary" OnClick="btnDangNhap_Click" />
                    <span>Click <a href="DangKi.aspx">vào đây</a> để tạo tài khoản mới</span>
                   
                </form>
            </div>
        </div>
    </div>
    <!-- Javascript -->
    <script src="Admin/assets/js/jquery-1.8.2.min.js"></script>
    <script src="Admin/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="Admin/assets/js/jquery.backstretch.min.js"></script>
    <script src="Admin/assets/js/scripts.js"></script>
</body>
</html>
