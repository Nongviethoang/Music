<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="QuanLyBaiHat.aspx.cs" Inherits="MusicWeb.Admin.QuanLyBaiHat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleAdmin" runat="server">
    Quản lý bài hát
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TieuDeChucNang" runat="server">
    Quản lý bài hát
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="formThem" runat="server">
    <asp:Table ID="tblTehmBaihat" runat="server">
        <asp:TableRow>
            <asp:TableCell>Tên bài hát</asp:TableCell>
            <asp:TableCell><asp:TextBox ID="txtTenBaihat" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Link bài hát</asp:TableCell>
            <asp:TableCell><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Tình trạng</asp:TableCell>
            <asp:TableCell><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Tên thể loại</asp:TableCell>
            <asp:TableCell><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Tên ca sĩ</asp:TableCell>
            <asp:TableCell><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Tên Album</asp:TableCell>
            <asp:TableCell><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Ảnh</asp:TableCell>
            <asp:TableCell><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <asp:Button ID="btnThemBaihat" runat="server" Text="Thêm bài hát" OnClick="btnThemBaihat_Click"/>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="TenDanhSach" runat="server">
    Danh sách bài hát
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
