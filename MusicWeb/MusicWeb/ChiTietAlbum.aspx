﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ChiTietAlbum.aspx.cs" Inherits="MusicWeb.ChiTietAlbum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
        <asp:DataList ID="dlAlbum" runat="server"  RepeatColumns="4">
        <ItemTemplate>
            <div class="AlbumDetail">
                
                    <asp:Image runat="server" ID="imgAlbum" ImageUrl='<%# "Picture/Album/" +Eval("anh")%>' />
               
           
                <div class="infor">
                    <h3>Tên Ablum: <%# Eval("tenAlbum")%></h3>
                    <h4>Thời gian phát hành: <%# Eval("thoiGian")%></h4>
                    <textarea>Mô tả: <%# Eval("mota")%></textarea>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
            </div>
        </div>
    </div>
    <h3> <u>Các bài hát trong album</u> </h3>
     <asp:ListView ID="ListMusic" runat="server" >
        <ItemTemplate>
            <div class ="clBaiHat">
                <asp:Image ID="img" runat="server" ImageUrl=' <%#"Picture/Music/" + Eval("anhBaiHat") %>' />
                <br />
                <div class="infoMusic">
                     <h3><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "PhatNhac.aspx?id="+Eval("maBaiHat") %>' Text='<%# Eval("tenBaiHat") %>'></asp:HyperLink> </h3>    
                </div> 
            </div>
        </ItemTemplate>
    </asp:ListView>
    
   
    <style type="text/css">
        .clBaiHat{
    height: 320px;
    width: 25%;
    float: left;
    cursor: pointer;
}
        .clBaiHat img {
        width: 200px;
        height: 220px;
    }

    .clBaiHat p {
        font-size: 18px;
    }

    .clBaiHat i {
        font-size: 15px;
    }
         .AlbumDetail img{
            width:243px;
            height:200px;
        }
        .AlbumDetail {
            width: 800px;
            height: 200px;
            display: flex;
        }
        .infor{
         margin-left: 11px;
     top: 0;
}
          }
    
        }
    </style>
</asp:Content>