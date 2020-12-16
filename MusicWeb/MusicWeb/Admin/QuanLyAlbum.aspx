<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="QuanLyAlbum.aspx.cs" Inherits="MusicWeb.Admin.QuanLyAlbum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleAdmin" runat="server">Quản lý album
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TieuDeChucNang" runat="server">
    Thêm Album
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="formThem" runat="server">
    <asp:Table ID="themAlbum" runat="server">
        <asp:TableRow>
            <asp:TableCell>Tên Album</asp:TableCell>
            <asp:TableCell><asp:TextBox ID="txtTenAablbum" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Mô tả</asp:TableCell>
            <asp:TableCell><asp:TextBox ID="txtmota" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Anh</asp:TableCell>
            <asp:TableCell><asp:TextBox ID="txtAnh" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Thời gian</asp:TableCell>
            <asp:TableCell><asp:TextBox ID="txtthoigian" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Danh sách bài hát</asp:TableCell>
            <asp:TableCell><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <asp:Button ID="themAlbummoi" runat="server" Text="Thêm Album" OnClick="themAlbummoi_Click"/>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="TenDanhSach" runat="server">Danh sách Album
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ListDanhSach" runat="server">

  

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="maAlbum" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="maAlbum" HeaderText="maAlbum" InsertVisible="False" ReadOnly="True" SortExpression="maAlbum" />
            <asp:BoundField DataField="tenAlbum" HeaderText="tenAlbum" SortExpression="tenAlbum" />
            <asp:BoundField DataField="moTa" HeaderText="moTa" SortExpression="moTa" />
            <asp:BoundField DataField="anh" HeaderText="anh" SortExpression="anh" />
            <asp:BoundField DataField="thoiGian" HeaderText="thoiGian" SortExpression="thoiGian" />
            <asp:BoundField DataField="danhSachBai" HeaderText="danhSachBai" SortExpression="danhSachBai" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseMusicConnectionString %>" DeleteCommand="DELETE FROM [tblAlbumBaiHat] WHERE [maAlbum] = @maAlbum" InsertCommand="INSERT INTO [tblAlbumBaiHat] ([tenAlbum], [moTa], [anh], [thoiGian], [danhSachBai]) VALUES (@tenAlbum, @moTa, @anh, @thoiGian, @danhSachBai)" SelectCommand="SELECT * FROM [tblAlbumBaiHat]" UpdateCommand="UPDATE [tblAlbumBaiHat] SET [tenAlbum] = @tenAlbum, [moTa] = @moTa, [anh] = @anh, [thoiGian] = @thoiGian, [danhSachBai] = @danhSachBai WHERE [maAlbum] = @maAlbum">
        <DeleteParameters>
            <asp:Parameter Name="maAlbum" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="tenAlbum" Type="String" />
            <asp:Parameter Name="moTa" Type="String" />
            <asp:Parameter Name="anh" Type="String" />
            <asp:Parameter Name="thoiGian" Type="DateTime" />
            <asp:Parameter Name="danhSachBai" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="tenAlbum" Type="String" />
            <asp:Parameter Name="moTa" Type="String" />
            <asp:Parameter Name="anh" Type="String" />
            <asp:Parameter Name="thoiGian" Type="DateTime" />
            <asp:Parameter Name="danhSachBai" Type="String" />
            <asp:Parameter Name="maAlbum" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

  

</asp:Content>
