<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="QuanLyChuDe.aspx.cs" Inherits="MusicWeb.Admin.QuanLyChuDe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleAdmin" runat="server">
    Quản lý chủ đề
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TieuDeChucNang" runat="server">
    Thêm mới chủ đề
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="formThem" runat="server">
    <asp:Table ID="tblThemChuDe" runat="server">
        <asp:TableRow>
            <asp:TableCell>Mã chủ đề</asp:TableCell>
            <asp:TableCell><asp:TextBox ID="txtMaCd" runat="server" ReadOnly="true"></asp:TextBox></asp:TableCell>

        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Tên chủ đề</asp:TableCell>
            <asp:TableCell><asp:TextBox ID="txtTenChuDe" runat="server"></asp:TextBox></asp:TableCell>

        </asp:TableRow>
        
    </asp:Table>
    <asp:Button ID="btnThemCd" runat="server" Text="Thêm chủ để" OnClick="btnThemCd_Click" />
            <asp:Button ID="bntXoa" runat="server" Text="Cancel" />
    <br />
    <asp:Label ID="mess" runat="server"></asp:Label>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="TenDanhSach" runat="server">
    Danh sách chủ để
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ListDanhSach" runat="server">

    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="maChuDe" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="maChuDe" HeaderText="maChuDe" InsertVisible="False" ReadOnly="True" SortExpression="maChuDe" />
            <asp:BoundField DataField="tenChuDe" HeaderText="tenChuDe" SortExpression="tenChuDe" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseMusicConnectionString %>" DeleteCommand="DELETE FROM [tblChuDe] WHERE [maChuDe] = @maChuDe" InsertCommand="INSERT INTO [tblChuDe] ([tenChuDe]) VALUES (@tenChuDe)" SelectCommand="SELECT * FROM [tblChuDe]" UpdateCommand="UPDATE [tblChuDe] SET [tenChuDe] = @tenChuDe WHERE [maChuDe] = @maChuDe">
        <DeleteParameters>
            <asp:Parameter Name="maChuDe" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="tenChuDe" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="tenChuDe" Type="String" />
            <asp:Parameter Name="maChuDe" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    
</asp:Content>
