<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="QuanLyCaSi.aspx.cs" Inherits="MusicWeb.Admin.QuanLyCaSi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleAdmin" runat="server">Quản lý ca sĩ
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TieuDeChucNang" runat="server">
    Thêm ca sĩ
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="formThem" runat="server">
     <div class="form-group">
        <label>Mã ca sĩ</label>
        <asp:TextBox ID="txtMaCS" CssClass="form-control" runat="server" ReadOnly="true"></asp:TextBox>
    </div>
    <div class="form-group">
        <label>Tên ca sĩ</label>
        <asp:TextBox ID="txtTenCs" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group">
        <label>Ảnh</label>
        <asp:FileUpload ID="imgCS" runat="server" />
    </div>
    <div class="form-group">
        <label>Thông tin</label>
        <asp:TextBox ID="txtinfor" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <asp:Button ID="btnThemCs" runat="server" Text="Thêm" CssClass="btn btn-primary" OnClick="btnThemCs_Click"/>
    <asp:Button ID="btnSuaCs" runat="server" Text="Sửa" CssClass="btn btn-primary" OnClick="btnSuaCs_Click"/>
    <br />
    <asp:Label runat="server"  ID="mes" ></asp:Label>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="TenDanhSach" runat="server">
    Danh sách ca sĩ
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ListDanhSach" runat="server">
    <asp:GridView ID="dsCaSi" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="maCaSi" HeaderText="Mã ca sĩ" />
            <asp:BoundField DataField="tenCaSi" HeaderText="Tên ca sĩ" />
            <asp:BoundField DataField="anh" HeaderText="Ảnh" />
            <asp:BoundField DataField="thongTin" HeaderText="Thông tin chi tiết" />
            <asp:TemplateField HeaderText="Xóa">
                <ItemTemplate>
                    <asp:Button ID="xoa" runat="server"
                        CommandArgument='<%# Bind("maCaSi") %>' CommandName="xoa" Text="Xóa"
                        OnCommand="xoa_Command" OnClientClick="return confirm('Bạn có muốn xóa?')" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sửa">
                <ItemTemplate>
                    <asp:Button ID="sua" runat="server"
                        CommandArgument='<%# Bind("maCaSi") %>' CommandName="sua" Text="Sửa"
                        OnCommand="sua_Command"  />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
