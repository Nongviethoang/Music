<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="CaSi.aspx.cs" Inherits="MusicWeb.CaSi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
        <asp:DataList ID="dlCaSi" runat="server"  RepeatColumns="4">
        <ItemTemplate>
            <div class="listCate">
            <asp:Image runat="server" ID="imgAlbum" ImageUrl='<%# "Picture/Singer/"+Eval("anh") %>' />
           <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ChiTietCaSi.aspx?id="+Eval("maCaSi") %>' Text='<%# Eval("tenCaSi") %>'></asp:HyperLink>  
            </div>
        </ItemTemplate>
    </asp:DataList>
            </div>
        </div>
    </div>
    <style type="text/css">
        .listCate img{
            width:243px;
            height:200px;
        }
    </style>
</asp:Content>
