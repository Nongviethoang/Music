<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="QuanLyTheLoai.aspx.cs" Inherits="WebNgheNhac.Admin.QuanLyTheLoai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleAdmin" runat="server">
    Quản lý thể loại
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TieuDeChucNang" runat="server">Thêm thể loại
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="formThem" runat="server">
    <div class="form-group">
        <label >Mã thể loại</label>
        <asp:TextBox ID="txtmatl" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
    </div>
    <div class="form-group">
        <label >Tên thể loại</label>
        <asp:TextBox ID="txtTenTL" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
     <div class="form-group">
        <label >Tên chủ đề</label>
        <asp:DropDownList ID="dlchude" runat="server"></asp:DropDownList>
    </div>
     <%--<asp:Button ID="AddTl" runat="server" CssClass="btn btn-primary" Text="Thêm thể loại" OnClick="AddTl_Click" />--%>
    <asp:Button ID="qltl" runat="server" Text="Thêm thể  loại" CssClass="btn btn-primary" OnClick="qltl_Click" />
    <asp:Button ID="btnSuaTl" runat="server" Text="Sửa" CssClass="btn btn-primary" OnClick="btnSuaTl_Click" />

    <asp:Label ID="mes" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="TenDanhSach" runat="server">Danh sách thể loại
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ListDanhSach" runat="server">
    <asp:GridView ID="dsTheLoai" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="maTheLoai" HeaderText="Mã thể loại" />
            <asp:BoundField DataField="tenTheLoai" HeaderText="Tên thể loại" />
            <asp:BoundField DataField="maChuDe" HeaderText="Mã chủ đề" />
            <asp:TemplateField HeaderText="Xóa">
                <ItemTemplate>
                    <asp:Button ID="xoa" CommandArgument='<%#Bind("maTheLoai")%>'
                        CommandName="xoa" Text="Xóa" OnClientClick="return confirm('Bạn có muốn xóa?')"
                        runat="server" OnCommand="xoa_Command"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sửa">
                <ItemTemplate>
                    <asp:Button ID="sua" CommandArgument='<%#Bind("maTheLoai")%>'
                        CommandName="sua" Text="Sửa" 
                        runat="server" OnCommand="sua_Command"/>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        
    </asp:GridView>

</asp:Content>
