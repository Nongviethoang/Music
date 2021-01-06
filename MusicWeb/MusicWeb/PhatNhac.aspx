<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="PhatNhac.aspx.cs" Inherits="MusicWeb.PhatNhac" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ListMusic" runat="server" >
        <ItemTemplate>
            <div class ="clBaiHat">
                <asp:Image ID="img" runat="server" ImageUrl=' <%#"Picture/Music/" + Eval("anhBaiHat")%>' />
                <div class="infoMusic">
                     <h3>Bài hát:<%# Eval("tenbaihat")%></h3>
                     <h3>Ca sĩ:<%# Eval("tenCaSi") %></h3>
                </div>
                <div class="playms" onclick="setMusicPlay('<%# Eval("linkbaihat") %>', '<%# "Picture/Music/"+ Eval("anhbaihat") %>',
                '<%# Eval("tenbaihat") %>')">
               <span>Nghe ngay</span>
           </div>
                <br />
                <div class="loibaihat">
                <h3>Lời bài hát: </h3> 
                <textarea  style="width:700px;height:120px"><%# Eval("loibaihat") %></textarea>
                </div>  
            </div>
        </ItemTemplate>
    </asp:ListView>
    <div id="playMusic">
        <div id="show">
            <div id="musicDisc">
                <img id="showI" src="Picture/Icon/iconms.jpg"/>
            </div>
            <div id="musicInfo">
                <b id="showN"></b> <br />
               
            </div>
        </div>

        <audio id="audio" preload="auto" autoplay="true" loop="true" controls>
        <source src="a.mp3" type="audio/mpeg">
        
        </audio>

        <script>
            function setMusicPlay(musicUrl, imgURL, nameSong, singerSong) {
            var audio = document.getElementById("audio");
            var image = document.getElementById("showI");
            var name = document.getElementById("showN");
            
            audio.src = musicUrl;
            image.src = imgURL;
            name.innerText = nameSong;
           
        }
        </script>
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <style type="text/css">
            #playMusic {
    width: 50%;
    height: 10%;
    right:0;
    background:#FFC0CB;
    box-shadow: #FFC0CB 5px 5px 20px 0px;
    position: absolute;
}

#audio {
    width: 50%;
}
.playms{
    width: 100px;
    height: 20px;
    border: 1px solid black;
    border-radius: 30px;
    background: orangered;
    text-align: center;
    cursor:pointer;
}
.clBaiHat{
    position: absolute;
}
.cmt{
           
    clear: both;
    position: absolute;
    margin-left: 0;
    width: 500px;
    height: auto;
    margin-top: 290px;
}
.loibaihat{
        margin-left: 301px;
    margin-top: -240px;
}
.text{
        width: 500px;
    height: 20px;
    border-bottom: 1px solid black;
}
.writecmt{
    width: 500px;
    height: 50px;
    margin-top: 322px;
    margin-left:510px;
}
.PMCmt{
    display:flex;
    height:500px;
    padding-top:60px;
}
     </style>
    </div>
    <div class="PMCmt">
    <div class="cmt">
    <span>Bình luận</span>
        <br />
    <asp:ListView ID="listCmt" runat="server" OnSelectedIndexChanged="listCmt_SelectedIndexChanged">
        <ItemTemplate>
               <div class="text">
                   <asp:Label ID="lbTenTv" runat="server"> <%# Eval("tenThanhVien")%></asp:Label>
                   <asp:Label ID="thoiGian" runat="server"> <%# Eval("thoigian")%></asp:Label>
                   :<%# Eval("noiDung")%></div> 
        </ItemTemplate>
    </asp:ListView>
        </div>
    <div class="writecmt">
   
             <asp:TextBox runat="server" ID="txtinput"></asp:TextBox>
        <br />
            <asp:Button ID="btnCmt" runat="server" Text="Bình luận" CssClass="btn btn-primary" OnClick="btnCmt_Click"/>
        </div>
          </div>
</asp:Content>
