<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="QuanLyThanhVien.aspx.cs" Inherits="MusicWeb.Admin.QuanLyThanhVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleAdmin" runat="server">
    Quản lý thành viên
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TieuDeChucNang" runat="server">
    Quản lý thành viên
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="formThem" runat="server">
    <div class="form-group">
        <label>Mã thành viên</label>
        <asp:TextBox ID="txtMaTV" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
    </div>
    <div class="form-group">
        <label>Tên đăng nhập</label>
        <asp:TextBox ID="txtTenDN" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <label>Mật khẩu</label>
        <asp:TextBox ID="txtMK" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <label>Tên thành viên</label>
        <asp:TextBox ID="txtTenTV" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <label>Email</label>
        <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <label>Anh</label>
        <asp:FileUpload ID="fileanh" runat="server" />
    </div>
    <asp:Button ID="btnSua" runat="server" CssClass="btn btn-primary" Text="Sửa" OnClick="btnSua_Click" />
    <asp:Label ID="mess" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="TenDanhSach" runat="server">
    Danh sách thành viên
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ListDanhSach" runat="server">
    <asp:GridView ID="dsThanhVien" runat="server" AutoGenerateColumns="False"
>
        <Columns>
            <asp:BoundField DataField="maThanhVien" HeaderText="Mã thành viên" />
            <asp:BoundField DataField="tenDangNhap" HeaderText="Tên đăng nhập" />
            <asp:BoundField DataField="matKhau" HeaderText="Mật khẩu" />
            <asp:BoundField DataField="hoTen" HeaderText="Họ tên" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="anh" HeaderText="Ảnh" />
            <asp:TemplateField HeaderText="Xóa">
                <ItemTemplate>
                    <asp:Button ID="xoa" runat="server" CommandArgument='<%#Bind("maThanhVien") %>'
                        CommandName="xoa" Text="Xóa" OnClientClick="return confirm('Bạn có muốn xóa?')"
                        OnCommand="xoa_Command1" />
                </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Sửa">
                 <ItemTemplate>
                    <asp:Button ID="sua" runat="server" CommandArgument='<%#Bind("maThanhVien") %>'
                        CommandName="sua" Text="Sửa" 
                        OnCommand="sua_Command" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>

    </asp:GridView>   
</asp:Content>
