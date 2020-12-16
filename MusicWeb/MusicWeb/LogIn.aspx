<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="MusicWeb.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In</title>
    <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0"/>
    <style>
        *{
            margin: 0; 
            padding: 0;
        }
        html {
            font-size: 62.5%;
        }
        body{
            font-family: Arial, Helvetica, sans-serif;
            background-image: url("/Picture/backgroundBig.jpg");
            color: black;
        }
        #login {
            margin-top: 50px;
            font-size: 18px;
            border: 1px solid black;
            padding: 20px;
            width: 350px;
            height: 380px;
            position: absolute;
            top: 40%;
            left: 50%;
            box-shadow: #FFC0CB 5px 5px 20px 0px;
            transform: translate(-50%,-50%);
            background:#f0f0f0;
        }
        h2 {
            font-size: 4rem;
            text-align: center;
            margin-bottom: 80px;
            color: white;
        }
        .name{
            width: 100%;
            height: 50px;
            margin-top: 10px;
        }
        label{
            width: 30%;
            float: left;
        }
        input{
            width: 70%;
            float: right;
        }
        .btn{
            width: 100%;
            height: 30px;
            margin-top: 30px;
        }
        #btnLogIn{
            float: right;
            border-radius: 5px;
            padding: 5px 15px 5px 15px;
            width:auto;
            box-shadow: rgba(0,0,0,0.3) 2px 2px 20px 0px;
            font-size: 20px;
            cursor: pointer;
        }
        #btnLogIn:hover{
            box-shadow: rgba(255,255,255,0.3) 2px 2px 20px 0px;
        }
        .withSU label{
            text-align: center;
            width: 100%;
            height: 60px;
            margin-top: 30px;
        }
        .withSU a{
            color: chartreuse;
        }
        .withSU a:hover{
            color: darkblue;
            font-size: 20px;
        }

        @media only screen
        and (min-width: 320px)
        and (max-width: 768px){
            /* For mobile phone: */
            #login{
                margin-top: 80px;
                width: 70%;
                height: 50%;
            }
            .name label{
                width: 40%;
            }
            .name input{
                width: 60%;
            }
            .btn{
                text-align: center;
            }
            #btnLogIn{
                float: none;
                padding: 5px 50px 5px 50px;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" action="LogIn.aspx" method="post">
        <div id="login" >
            <h2> Log In </h2>
            <div class="name">
                <label for="user"> User Name: </label> <br />
                <input name="name" type="text" value=""/>
            </div>
            <div class="name">
                <label for="pass"> Password: </label> <br />
                <input name="password" type="password" value=""/>
            </div>

            <div class="btn">
                <asp:Button id="btnLogIn" runat="server" Text="Log In" OnClick="btnLogIn_Click"/> <br />
            </div>
            <div class="withSU">
                <label for="signUp">
                    Do you not have an account? <br /> 
                    <a href="SignUp.aspx"> Create Sign Up! </a> 
                </label>
            </div>
        </div>
    </form>
</body>
</html>