using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MusicWeb.Entity;
using MusicWeb;

namespace MusicWeb.Admin
{
    public partial class QuanLyAlbum : System.Web.UI.Page
    {
        DataUtils data = new DataUtils();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadAL();
        }
        public void LoadAL()
        {
            dsAlbum.DataSource = data.dsAlbum();
            DataBind();
        }
        protected void themAlbummoi_Click(object sender, EventArgs e)
        {
            try
            {
                Entity.Album a = new Entity.Album();
                a.tenAlbum = txtTenAL.Text;
                a.moTa = txtMota.Text;
                imgAl.PostedFile.SaveAs(Server.MapPath("~/Picture/" + imgAl.FileName));
                a.anh = imgAl.FileName;
                a.thoiGian = dtAl.SelectedDate.ToShortDateString();
                data.themAlbum(a);
                LoadAL();
                mes.Text = "Thêm thành công";

            }
            catch(Exception er)
            {
                mes.Text = "Lỗi " + er;
            }
        }

        protected void xoa_Command(object sender, CommandEventArgs e)
        {
            try
            {
                if(e.CommandName=="xoa")
                {
                    int ma = Convert.ToInt16(e.CommandArgument);
                    data.xoaAlbum(ma);
                    LoadAL();
                    
                }
            }
            catch (Exception er){ mes.Text = "Lỗi " + er.Message; }
        }

        protected void sua_Command(object sender, CommandEventArgs e)
        {
            if(e.CommandName=="sua")
            {
                int ma = Convert.ToInt16(e.CommandArgument);
                Entity.Album a = data.layAlbum(ma);
                txtMaAl.Text = a.maAlbum.ToString();
                txtTenAL.Text = a.tenAlbum;
                txtMota.Text = a.moTa;

            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                Entity.Album a = new Entity.Album();
                a.maAlbum = int.Parse(txtMaAl.Text);
                a.tenAlbum = txtTenAL.Text;
                a.moTa = txtMota.Text;
                imgAl.PostedFile.SaveAs(Server.MapPath("~/Picture/" + imgAl.FileName));
                a.anh = imgAl.FileName;
                a.thoiGian = dtAl.SelectedDate.ToShortDateString();
                data.capNhatAblum(a);
                LoadAL();
                mes.Text = "Sửa thành công";
                txtMaAl.Text = " ";
            }
            catch(Exception er)
            {
                mes.Text = "Lỗi " + er.Message;
            }
        }
    }
}