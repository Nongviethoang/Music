<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="MusicWeb.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Admin/assets/css/StyleSheetHome.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div id="slide">
	<img src="Picture/Banner/1.jpg" id="img-slide" alt="">
    </div>
    <h2><u>Bài hát hot</u></h2>
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
    <h2><u>Album hot</u></h2>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
        <asp:DataList ID="dlAlbum" runat="server"  RepeatColumns="4">
        <ItemTemplate>
            <div class="listAlbum">
                
                    <asp:Image runat="server" ID="imgAlbum" ImageUrl='<%# "Picture/Album/" +Eval("anh")%>' />
               
           <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ChiTietAlbum.aspx?id="+Eval("maAlbum") %>' Text='<%# Eval("tenAlbum") %>'></asp:HyperLink>
<br /></div>
        </ItemTemplate>
    </asp:DataList>
            </div>
        </div>
    </div>
      <style type="text/css">
        .listAlb img{
            width:250px;
            height:200px;
            
           
        }
        .listAlb
        {
            padding:30px;
            text-align:center;
        }
        img{
			width: 900px;
		}
		#slide
		
		{
			width: 900px;
            height: 400px;
            margin: auto;
            overflow: hidden;
            cursor: pointer;
		}
        
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
    .listAlbum img{
            width:250px;
            height:200px;
            padding-right:10px;
         
        }
    .listAlbum{
            width: 255px;
         display: block;
        text-align:center;
        margin-right:10px;
        font-size:15px;
        font-weight:bold;
    }
        img:last-child{
             border-right:none;
        }
    </style>
    <script type="text/javascript">
	var slide=new Array();
	slide[0]="Picture/Banner/1.jpg";
	slide[1]="Picture/Banner/2.jpg";
	slide[2]="Picture/Banner/3.jpg";
	slide[3]="Picture/Banner/4.jpg";
	slide[4]="Picture/Banner/5.jpg";
	//biến key lưu giá trị ảnh
	var key=0;
	setInterval(function(){
		//thay đổi giá trị thuộc tính src của id=img-slide
		document.getElementById("img-slide").setAttribute("src",slide[key]);
		key++;
		if(key==slide.length)
		{
			key=0;
		}
	},3000);
</script>
</asp:Content>