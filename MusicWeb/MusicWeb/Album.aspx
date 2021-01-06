<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Album.aspx.cs" Inherits="MusicWeb.Album" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="Admin/assets/css/StyleSheetHome.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row">
            <div class="col-md-12">
        <asp:DataList ID="dlAlbum" runat="server"  RepeatColumns="4">
        <ItemTemplate>
            <div class="listCate">
                
                    <asp:Image runat="server" ID="imgAlbum" ImageUrl='<%# "Picture/Album/" +Eval("anh")%>' />
               
           <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ChiTietAlbum.aspx?id="+Eval("maAlbum") %>' Text='<%# Eval("tenAlbum") %>'></asp:HyperLink>
<br /></div>
        </ItemTemplate>
    </asp:DataList>
            </div>
        </div>
    </div>
    <style type="text/css">
        .listCate img{
            width:250px;
            height:200px;
            border-right:4px solid red;
           
        }
        img:last-child{
             border-right:none;
        }
    </style>
</asp:Content>
