<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="TheLoai.aspx.cs" Inherits="MusicWeb.TheLoai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                 <asp:DataList ID="dlTheLoai" runat="server"  RepeatColumns="4">
        <ItemTemplate>
           
            <div class="listCate">
           <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "TheLoai.aspx?id="+Eval("maTheLoai") %>' Text='<%# Eval("tenTheLoai") %>'></asp:HyperLink>
<br /></div>
        </ItemTemplate>
    </asp:DataList>
            </div>
        </div>
    </div>
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
