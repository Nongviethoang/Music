<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="QuanLyBinhLuan.aspx.cs" Inherits="MusicWeb.Admin.QuanLyBinhLuan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleAdmin" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TieuDeChucNang" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="formThem" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="TenDanhSach" runat="server">
    Tất cả bình luận
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ListDanhSach" runat="server">
    
    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="maCamNhan" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="maCamNhan" HeaderText="Mã cảm nhận" InsertVisible="False" ReadOnly="True" SortExpression="maCamNhan" />
            <asp:BoundField DataField="noiDung" HeaderText="Nội dung" SortExpression="noiDung" />
            <asp:BoundField DataField="thoiGian" HeaderText="Thời gian" SortExpression="thoiGian" />
            <asp:BoundField DataField="maBaiHat" HeaderText="Mã bài hát" SortExpression="maBaiHat" />
            <asp:BoundField DataField="maThanhVien" HeaderText="Mã thành viên" SortExpression="maThanhVien" />
            <asp:CommandField HeaderText="Lựa chọn" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseMusicConnectionString %>" DeleteCommand="DELETE FROM [tblCamNhan] WHERE [maCamNhan] = @maCamNhan" InsertCommand="INSERT INTO [tblCamNhan] ([noiDung], [thoiGian], [maBaiHat], [maThanhVien]) VALUES (@noiDung, @thoiGian, @maBaiHat, @maThanhVien)" SelectCommand="SELECT * FROM [tblCamNhan]" UpdateCommand="UPDATE [tblCamNhan] SET [noiDung] = @noiDung, [thoiGian] = @thoiGian, [maBaiHat] = @maBaiHat, [maThanhVien] = @maThanhVien WHERE [maCamNhan] = @maCamNhan">
        <DeleteParameters>
            <asp:Parameter Name="maCamNhan" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="noiDung" Type="String" />
            <asp:Parameter Name="thoiGian" Type="DateTime" />
            <asp:Parameter Name="maBaiHat" Type="Int32" />
            <asp:Parameter Name="maThanhVien" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="noiDung" Type="String" />
            <asp:Parameter Name="thoiGian" Type="DateTime" />
            <asp:Parameter Name="maBaiHat" Type="Int32" />
            <asp:Parameter Name="maThanhVien" Type="Int32" />
            <asp:Parameter Name="maCamNhan" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
