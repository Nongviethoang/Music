<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="QuanLyChuDe.aspx.cs" Inherits="MusicWeb.Admin.QuanLyChuDe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleAdmin" runat="server">
    Quản lý chủ đề
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TieuDeChucNang" runat="server">
    Thêm mới chủ đề
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="formThem" runat="server">
    <div class="form-group">
        <label>Mã chủ đề</label>
        <asp:TextBox ID="txtmacd" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
    </div>
    <div class="form-group">
        <label>Tên chủ đề</label>
        <asp:TextBox ID="txttencd" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <asp:Button ID="btnThemCd" runat="server" Text="Thêm chủ để" OnClick="btnThemCd_Click" CssClass="btn btn-primary" />
      <asp:Button ID="btnSua" runat="server" Text="Sửa chủ để" CssClass="btn btn-primary" OnClick="btnSua_Click" />     
    <br />
    <asp:Label ID="mess" runat="server"></asp:Label>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="TenDanhSach" runat="server">
    Danh sách chủ để
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ListDanhSach" runat="server">
    <asp:GridView ID="dsChuDe" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="maChuDe" HeaderText="Mã chủ đề" />
            <asp:BoundField DataField="tenChuDe" HeaderText="Tên chủ đề" />
            <asp:TemplateField HeaderText="Xóa">
                <ItemTemplate>
                    <asp:Button ID="xoa" runat="server" CommandArgument='<%#Bind("maChuDe") %>'
                        CommandName="xoa" Text="Xóa" OnClientClick="return confirm('Bạn có muốn xóa?')"
                        OnCommand="Xoa_Click" />
                </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Sửa">
                 <ItemTemplate>
                    <asp:Button ID="sua" runat="server" CommandArgument='<%#Bind("maChuDe") %>'
                        CommandName="sua" Text="Sửa" 
                        OnCommand="Sua_Click" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>

    </asp:GridView>
    
   
    
</asp:Content>
