<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKi.aspx.cs" Inherits="MusicWeb.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <head>

        <meta charset="utf-8"/>
        <title>Đăng ký</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                        <h1><a href="#">Music4Life <span class="red">.</span></a></h1>
                    </div>
                    <div class="links span8">
                        <a class="home" href="#" rel="tooltip" data-placement="bottom" data-original-title="Home"></a>
                        <a class="blog" href="#" rel="tooltip" data-placement="bottom" data-original-title="Blog"></a>
                    </div>
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
                        <h2>Sign-up</h2>
                        <label >Tên đăng nhập</label>
                       <asp:TextBox ID="txttenDN" runat="server"></asp:TextBox>
                       <label >Mật khẩu</label>
                       <asp:TextBox ID="txtMk" runat="server"></asp:TextBox>
                        <label >Họ tên</label>
                       <asp:TextBox ID="txtHt" runat="server"></asp:TextBox>
                        <label >Email</label>
                       <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                        <label>Ảnh</label>
                        <asp:FileUpload ID="fileAnh" runat="server" />
                        <asp:Button ID="btndangki" runat="server" Text="Đăng kí" OnClick="btndangki_Click" />
                        <br />
                        <asp:Label ID="mes" runat="server"></asp:Label>
                         <span><a href="DangNhap.aspx">Đăng nhập</a></span>
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
