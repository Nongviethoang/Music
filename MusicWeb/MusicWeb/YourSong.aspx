﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YourSong.aspx.cs" Inherits="MusicWeb.YourSong" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Your Song </title>
    <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0"/>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        body{
            width: calc(100% - 100px);
            height: 100%;
            padding-left: 50px;
            padding-right: 50px;
        }
        body h2{
            background-image: url("Picture/backgroud.jpg");
            color: white;
            padding: 10px 0 10px 0;
            text-align: center;
            margin-top: 30px;
            margin-bottom: 30px;
        }
        .yourSong{
            border: solid 1px black;
            width: 150px;
            height: auto;
            float: left;
            margin-right: 6px;
        }
        .yourSong img{
            width:150px;
            height:150px;
        }
        .infoMusic{
            height:90px;
        }
        .yourSong #but{
           width:100%;
           text-align: center;
           display:block;
           margin-bottom:10px;
        }
       
        @media only screen
        and (min-width: 320px)
        and (max-width: 768px) {
            /* For mobile phone: */
            body{
                width: 100%;
                height: 100%;
            }
            .yourSong{
                float: left;
                width: 45%; 
                margin-left: 10px;
                margin-bottom: 10px;
                font-size: 20px;
            }
            .yourSong img{
                width: 100%;
                height: 180px;
            }
            .infoMusic{
                text-align: center;
            }
            #but button{
                font-size: 15px;
                margin-top: 10px;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2> YOUR SONG </h2>
        <asp:ListView ID="YourMusic" runat="server">
            <ItemTemplate>
                <div class ="yourSong" onclick="DeleteSong()">
                    <img src="<%# Eval("imgUrl") %>">
                    <br />
                    <div class="infoMusic">
                         <h4><%# Eval("nameMusic") %></h4>
                         <p><%# Eval("singerName") %></p>
                         <i>(<%# Eval("album") %>)</i>
                    </div>
                    <div id="but">
                            <button type="submit" name="Delete" value="<%# Eval("idMusic") %>" >Delete Song</button>
                    </div>
                </div>
            </ItemTemplate>
        </asp:ListView>
    </form>
</body>
    
</html>
