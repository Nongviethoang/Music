<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="QuanLyAlbum.aspx.cs" Inherits="MusicWeb.Admin.QuanLyAlbum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleAdmin" runat="server">Quản lý album
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TieuDeChucNang" runat="server">
    Thêm Album
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="formThem" runat="server">
        <div class="form-group">
            <label>Mã album</label>
            <asp:TextBox ID="txtMaAl" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
        </div>
    <div class="form-group">
            <label>Tên album</label>
            <asp:TextBox ID="txtTenAL" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
   
    <div class="form-group">
            <label>Thời gian</label>
        <asp:Calendar ID="dtAl" runat="server" DayNameFormat="Full"></asp:Calendar>
        </div>
     <div class="form-group">
            <label>Ảnh</label>
            <asp:FileUpload ID="imgAl" runat="server" />
        </div>
    <div class="form-group">
            <label>Mô tả</label>
            <asp:TextBox ID="txtMota" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    <asp:Button ID="themAlbummoi" runat="server" Text="Thêm Album" OnClick="themAlbummoi_Click" CssClass="btn btn-primary"/>

    <asp:Button ID="btnSua" runat="server" CssClass="btn btn-primary" Text="Sửa" OnClick="btnSua_Click" />
    <br />
    <asp:Label ID="mes" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="TenDanhSach" runat="server">Danh sách Album
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ListDanhSach" runat="server">
    <asp:GridView ID="dsAlbum" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="maAlbum" HeaderText="Mã album" />
            <asp:BoundField DataField="tenAlbum" HeaderText="Tên Album" />
            <asp:BoundField DataField="anh" HeaderText="Ảnh" />
            <asp:BoundField DataField="thoiGian" HeaderText=" Thời gian phát hành" />
            <asp:BoundField DataField="mota" HeaderText="Mô tả" />
            <asp:TemplateField HeaderText="Xóa">
                <ItemTemplate>
                    <asp:Button ID="xoa" runat="server"
                        CommandName="xoa" CommandArgument='<%#Bind("maAlbum")%>' OnCommand="xoa_Command" 
                        Text="Xóa" OnClientClick="return confirm('Bạn có chắc chắn xóa?')" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sửa">
                <ItemTemplate>
                    <asp:Button ID="sua" runat="server"
                        CommandName="sua" CommandArgument='<%#Bind("maAlbum")%>' OnCommand="sua_Command" 
                        Text="Sửa" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>

    </asp:GridView>
</asp:Content>
