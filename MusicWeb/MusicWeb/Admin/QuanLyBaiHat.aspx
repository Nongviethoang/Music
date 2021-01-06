<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="QuanLyBaiHat.aspx.cs" Inherits="MusicWeb.Admin.QuanLyBaiHat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="titleAdmin" runat="server">
    Quản lý bài hát
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TieuDeChucNang" runat="server">
    Quản lý bài hát
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="formThem" runat="server">
    <div class="form-group">
        <label>Mã bài hát</label>
        <asp:TextBox ID="txtmabh" runat="server" CssClass="form-control" ReadOnly="true">
</asp:TextBox> 
         </div>
     <div class="form-group">
        <label>Tên bài hát</label>
        <asp:TextBox ID="txttenbh" runat="server" CssClass="form-control">
</asp:TextBox> 
         </div>
        <div class="form-group">
        <label>Link bài hát</label>
        <asp:FileUpload ID="fileNhac" runat="server" />
    </div>
    <div class="form-group">
        <label>Tình trạng</label>
        <asp:DropDownList ID="dlTinhTrang" runat="server">
            <asp:ListItem>Phát hành</asp:ListItem>
            <asp:ListItem>Chưa phát hành</asp:ListItem>
        </asp:DropDownList>
        </div>
    <div class="form-group">
        <label>Thể loại</label>
        <asp:DropDownList ID="dlmatl" runat="server" ></asp:DropDownList>
    </div>
    <div class="form-group">
        <label>Ca sĩ</label>
        <asp:DropDownList ID="dlcasi" runat="server" ></asp:DropDownList>
    </div>
    <div class="form-group">
        <label>Album</label>
        <asp:DropDownList ID="dlalbum" runat="server" ></asp:DropDownList>
    </div>
    <div class="form-group">
        <label>Ảnh</label>
        <asp:FileUpload ID="fileAnh" runat="server" />
    </div>
    <div class="form-group">
        <label>Lời bài hát</label>
        <asp:TextBox ID="txtLoiBaiHat" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <asp:Button ID="btnThemBaihat" runat="server" Text="Thêm bài hát" OnClick="btnThemBaihat_Click" CssClass="btn btn-primary"/>
    <br />
    <asp:Button ID="btnSuaBaihat" runat="server" Text="Sửa " CssClass="btn btn-primary" OnClick="btnSuaBaihat_Click"/>
    <br />
    <asp:Label ID="mes" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="TenDanhSach" runat="server">
    Danh sách bài hát
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ListDanhSach" runat="server">
    <asp:GridView ID="dsBaiHat" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="maBaiHat" HeaderText="Mã bài hát" />
            <asp:BoundField DataField="tenBaiHat" HeaderText="Tên bài hát" />
            <asp:BoundField DataField="linkBaiHat" HeaderText="Link" />
            <asp:BoundField DataField="tinhTrang" HeaderText="Tình trạng" />
            <asp:BoundField DataField="maCaSi" HeaderText="Mã ca sĩ" />
            <asp:BoundField DataField="maAlbum" HeaderText="Mã album" />
            <asp:BoundField DataField="maTheLoai" HeaderText="Mã thể loại" />
            <asp:BoundField DataField="anhBaiHat" HeaderText="Ảnh" />
            <asp:BoundField DataField="loiBaiHat" HeaderText="Lời bài hát" />

            <asp:TemplateField HeaderText="Xóa">
                <ItemTemplate>
                    <asp:Button ID="xoa" CommandArgument='<%#Bind("maBaiHat")%>'
                        CommandName="xoa" Text="Xóa" OnClientClick="return confirm('Bạn có muốn xóa?')"
                        runat="server" OnCommand="xoa_Command"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sửa">
                <ItemTemplate>
                    <asp:Button ID="sua" CommandArgument='<%#Bind("maBaiHat")%>'
                        CommandName="sua" Text="Sửa" 
                        runat="server" OnCommand="sua_Command"/>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
