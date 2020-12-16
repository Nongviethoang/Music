<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="MusicWeb.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
     <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0"/>
    <style>
        * {
            margin:0;
            padding:0;
        }
        html {
            font-size: 62.5%;
        }
        body{
            font-family: Arial, Helvetica, sans-serif;
            background-image: url("Picture/backgroundBig.jpg");
            color: white;
        }
        #signup{
            margin-top: 50px;
            font-size: 1.6rem;
            text-emphasis-color: white;
            border: 1px solid black;
            box-shadow: #A9A9A9 5px 5px 20px 0px;
            padding: 2rem;
            width: 35rem;
            height: 42rem;
            position: absolute;
            top: 40%;
            left: 50%;
            transform: translate(-50%,-50%);
            background: #ff6a00;
        }
        h2 {
            font-size: 3rem;
            text-align: center;
            color: white;
            margin-bottom: 20px;
        }
        .name{
            width: 100%;
            height: 50px;
            margin-top: 10px;
        }
        .name .label{
            width: 30%;
            float: left;
        }
        .name input{
            margin-top: 5px;
            width: 70%;
            float: right;
        }
        #agreement{
            margin-top: 5px;
            font-size: 15px;
            width:100%;
        }
        #agreement input{
            float: left;
            width: 15%;
            width: 15px;
            height: 15px;
        }
        #tt{
            float: right;
            width: 85%;
        }
        #tt label{
            width: 100%;
            float: right;
            display: block;
        }
        #tt a{
            color: chartreuse;
        }
        #tt a:hover{
            color: darkblue;
            font-size: 18px;
        }
        .btn{
            width: 100%;
            height: 30px;
            margin-top: 30px;
        }
        #btnSignUp{
            margin-top:20px;
            float: right;
            border-radius: 5px;
            padding: 5px 15px 5px 15px;
            width:auto;
            box-shadow: rgba(0,0,0,0.3) 2px 2px 20px 0px;
            font-size: 20px;
            cursor: pointer;
        }
        #btnSignUp:hover{
            box-shadow: rgba(255,255,255,0.3) 2px 2px 20px 0px;
        }

        @media only screen 
        and (min-width: 320px) 
        and (max-width: 768px) {
            /* For mobile phones: */
            #signup{
                margin-top: 80px;
                width: 70%;
                height: 55%;
            }
            #signup h2{
                margin-bottom: 30px;
            }
            .name label{
                width: 35%;
            }
            .name input{
                width: 65%;
            }
            #tt{
                display: inline;
            }
            .btn{
                text-align: center;
            }
            #btnSignUp{
                float: none;
                padding: 5px 50px 5px 50px;
            }
        }
    </style>
</head>
<body>
    
        <form id="form1" runat="server" method="post" action="SignUp.aspx">
        <div id="signup">
            <h2> Sign Up </h2>
            <div class="name">
                <label class="label"> Nick Name: </label>
                <input name="name" type="text" value=""/>    
            </div>
            <div class="name">
                <label class="label"> Password: </label>
                <input name="password" type="password" value=""/>
            </div>
            <div class="name">
                <label id="label"> Retype Password: </label>
                <input name="retypePassword" type="password" value=""/>
            </div>
            <div class="name">
                <label  class="label"> Birthday: </label>
                <input name="birthday" type="date"/>
            </div>
            <div class="name">
                <label class="label"> Email: </label>
                <input name="email" type="email" value=""/>
            </div>
            <div id="agreement">
                <input type="checkbox" name="checkAgree" value=""/>
                <div id="tt">
                    <label> Tôi đã đọc và đồng ý với các điều kiện </label>
                    <a href="">Thảo thuận sử dụng</a>
                </div>
            </div>
            <div class="btn">
                <asp:Button id="btnSignUp" runat="server" Text="Sign Up" OnClick="btnSignUp_Click"/>
            </div>
        </div>
    </form>
</body>
</html>
