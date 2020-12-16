<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="MusicWeb.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h2{
            float: left;
            width: 100%;
            margin-top: 10px;
        }
        .album{
            width: 25%;
            float: left;
        }
        .album img{
            width: 210px;
            height: 260px; 
        }
        .musicSong{
            height: 290px;
            width: 25%;
            float: left;
        }
        .musicSong img{
            width:200px;
            height:220px;
        }
        .musicSong p{
            font-size: 18px;
        }
        .musicSong i{
            font-size: 15px;
        }

        @media only screen
        and (min-width: 320px)
        and (max-width: 768px){
            /* For mobile phone: */
            h2{
                margin-top: 30px;
            }
            .musicSong {
                margin-top: 10px;
                margin-left: 30px;
                width: 40%;
                text-align: center;
                height: 200px;
            }
            .album{
                width: 45%;
                height: 250px;
                margin: 0px 10px 20px 0px;
            }
            .album img{
                width: 100%;
                height: 90%;
            }
            .album h5{
                font-size: 16px;
            }
        }
    </style>
</asp:Content>
    
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2><u>Song</u></h2>
    <asp:ListView ID="ListMusic" runat="server">
        <ItemTemplate>
            <div class ="musicSong" onclick="setMusicPlay('<%# Eval("mp3Url") %>', '<%# Eval("imgUrl") %>',
                '<%# Eval("nameMusic") %>', '<%# Eval("singerName") %>')">
                <img src="<%# Eval("imgUrl") %>">
                <br />
                <div class="infoMusic">
                     <h3><%# Eval("nameMusic") %></h3>
                     <p><%# Eval("singerName") %></p>
                     <i>(<%# Eval("album") %>)</i>
                </div>
            </div>
        </ItemTemplate>
    </asp:ListView>

    <h2><u>Album</u></h2>
    <div class="album" onclick="setShowAlbum('V-POP')">
        <img onclick="" src="Picture/v-pop.jpg"/> <br />
        <h5>V-POP Music</h5>
    </div>
    <div class="album" onclick="setShowAlbum('K-POP')">
        <img src="Picture/k-pop.jpg"/> <br />
        <h5>K-POP Music</h5>
    </div>
    <div class="album" onclick="setShowAlbum('J-POP')">
        <img src="Picture/Japanese.jpg"/> <br />
        <h5>J-POP Music</h5>
    </div>
    <div class="album" onclick="setShowAlbum('US-UK')">
        <img src="Picture/usuk.jpg"/> <br />
        <h5>US-UK Music</h5>
    </div>

    <script>
        function setMusicPlay(musicUrl, imgURL, nameSong, singerSong) {
            var audio = document.getElementById("audio");
            var image = document.getElementById("showI");
            var name = document.getElementById("showN");
            var singer = document.getElementById("showS");

            audio.src = musicUrl;
            image.src = imgURL;
            name.innerText = nameSong;
            singer.innerHTML = singerSong;
        }
    </script>
</asp:Content>