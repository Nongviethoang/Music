<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="BaiHat.aspx.cs" Inherits="MusicWeb.BaiHat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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

    </style>
</asp:Content>
