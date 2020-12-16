<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="QuanLyThanhVien.aspx.cs" Inherits="MusicWeb.Admin.QuanLyThanhVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleAdmin" runat="server">
    Quản lý thành viên
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TieuDeChucNang" runat="server">
    Quản lý thành viên
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="formThem" runat="server">
    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="TenDanhSach" runat="server">
    Danh sách thành viên
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ListDanhSach" runat="server">
   
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="maThanhVien" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="maThanhVien" HeaderText="maThanhVien" InsertVisible="False" ReadOnly="True" SortExpression="maThanhVien" />
            <asp:BoundField DataField="tenDangNhap" HeaderText="tenDangNhap" SortExpression="tenDangNhap" />
            <asp:BoundField DataField="matKhau" HeaderText="matKhau" SortExpression="matKhau" />
            <asp:BoundField DataField="hoTen" HeaderText="hoTen" SortExpression="hoTen" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="anh" HeaderText="anh" SortExpression="anh" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseMusicConnectionString %>" DeleteCommand="DELETE FROM [tblThanhVien] WHERE [maThanhVien] = @maThanhVien" InsertCommand="INSERT INTO [tblThanhVien] ([tenDangNhap], [matKhau], [hoTen], [email], [anh]) VALUES (@tenDangNhap, @matKhau, @hoTen, @email, @anh)" SelectCommand="SELECT * FROM [tblThanhVien]" UpdateCommand="UPDATE [tblThanhVien] SET [tenDangNhap] = @tenDangNhap, [matKhau] = @matKhau, [hoTen] = @hoTen, [email] = @email, [anh] = @anh WHERE [maThanhVien] = @maThanhVien">
        <DeleteParameters>
            <asp:Parameter Name="maThanhVien" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="tenDangNhap" Type="String" />
            <asp:Parameter Name="matKhau" Type="String" />
            <asp:Parameter Name="hoTen" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="anh" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="tenDangNhap" Type="String" />
            <asp:Parameter Name="matKhau" Type="String" />
            <asp:Parameter Name="hoTen" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="anh" Type="String" />
            <asp:Parameter Name="maThanhVien" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
   
</asp:Content>
