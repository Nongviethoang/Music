<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="QuanLyTheLoai.aspx.cs" Inherits="WebNgheNhac.Admin.QuanLyTheLoai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleAdmin" runat="server">
    Quản lý thể loại
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TieuDeChucNang" runat="server">Thêm thể loại
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="formThem" runat="server">
    <asp:Table ID="tblThemTheLoai" runat="server">
        <asp:TableRow>
            <asp:TableCell>Tên thể loại</asp:TableCell>
            <asp:TableCell><asp:TextBox ID="txtTenTheLoai" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Tên chủ đề</asp:TableCell>
            <asp:TableCell><asp:DropDownList ID="dlchude" runat="server">

                           </asp:DropDownList></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <asp:Button ID="btnThemTl" runat="server" Text="Thêm thể loại" OnClick="btnThemTl_Click"  />
            <asp:Button ID="bntXoa" runat="server" Text="Cancel" />
    <br />
    <asp:Label ID="mess" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="TenDanhSach" runat="server">Danh sách thể loại
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ListDanhSach" runat="server">

   

    <asp:GridView ID="GridViewTheLoai" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="maTheLoai" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="maTheLoai" HeaderText="maTheLoai" InsertVisible="False" ReadOnly="True" SortExpression="maTheLoai" />
            <asp:BoundField DataField="tenTheLoai" HeaderText="tenTheLoai" SortExpression="tenTheLoai" />
            <asp:BoundField DataField="maChuDe" HeaderText="maChuDe" SortExpression="maChuDe" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>

   

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseMusicConnectionString %>" DeleteCommand="DELETE FROM [tblTheLoai] WHERE [maTheLoai] = @maTheLoai" InsertCommand="INSERT INTO [tblTheLoai] ([tenTheLoai], [maChuDe]) VALUES (@tenTheLoai, @maChuDe)" SelectCommand="SELECT * FROM [tblTheLoai]" UpdateCommand="UPDATE [tblTheLoai] SET [tenTheLoai] = @tenTheLoai, [maChuDe] = @maChuDe WHERE [maTheLoai] = @maTheLoai">
        <DeleteParameters>
            <asp:Parameter Name="maTheLoai" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="tenTheLoai" Type="String" />
            <asp:Parameter Name="maChuDe" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="tenTheLoai" Type="String" />
            <asp:Parameter Name="maChuDe" Type="Int32" />
            <asp:Parameter Name="maTheLoai" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

   

</asp:Content>
