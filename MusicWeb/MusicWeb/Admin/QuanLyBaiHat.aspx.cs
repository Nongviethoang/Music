using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MusicWeb.Entity;
namespace MusicWeb.Admin
{
    public partial class QuanLyBaiHat : System.Web.UI.Page
    {
        DataUtils data = new DataUtils();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDS();
                LoadCs();
                LoadTl();
                LoadAl();
            }
                
        }
        public void LoadDS()
        {
            dsBaiHat.DataSource = data.dsBaiHat();
            DataBind();
        }
        public void LoadCs()
        {
            dlcasi.DataSource = data.dsCaSi();
            dlcasi.DataTextField = "tenCaSi";
            dlcasi.DataValueField = "maCaSi";
            DataBind();
        }
        public void LoadTl()
        {
            dlmatl.DataSource = data.dsTheLoai();
            dlmatl.DataTextField = "tenTheLoai";
            dlmatl.DataValueField = "maTheLoai";
            DataBind();
        }
        public void LoadAl()
        {
            dlalbum.DataSource = data.dsAlbum();
            dlalbum.DataTextField = "tenAlbum";
            dlalbum.DataValueField = "maAlbum";
            DataBind();
        }
        protected void btnThemBaihat_Click(object sender, EventArgs e)
        {
            try
            {
                Entity.BaiHat bh = new Entity.BaiHat();

                bh.tenBaiHat = txttenbh.Text;
                bh.maTheLoai = int.Parse(dlmatl.SelectedValue.ToString());
                bh.maCaSi = int.Parse(dlcasi.SelectedValue.ToString());
                bh.maAlbum = int.Parse(dlalbum.SelectedValue.ToString());
                bh.tinhTrang = dlTinhTrang.Text;
                string link = fileNhac.FileName;
                fileNhac.PostedFile.SaveAs(Server.MapPath("~/Music/" + link));
                bh.linkBaiHat = "Music/" + link.ToString();

                fileNhac.PostedFile.SaveAs(Server.MapPath("~/Picture/Music" + fileAnh.FileName));
                bh.anhBaiHat = fileAnh.FileName;
                bh.loiBaiHat = txtLoiBaiHat.Text;
                data.themBaiHat(bh);
                LoadDS();
                mes.Text=("Thêm thành công");
            }
            catch (Exception er)
            {
                mes.Text = "Lỗi " + er.Message;
            }
        }

        protected void xoa_Command(object sender, CommandEventArgs e)
        {
            try
            {
                if(e.CommandName=="xoa")
                {
                    int ma = Convert.ToInt16(e.CommandArgument);
                    data.xoaBaiHat(ma);
                    LoadDS();
                }

            }
            catch(Exception er)
            {
                mes.Text = "Lỗi " + er.Message;
            }
        }

        protected void sua_Command(object sender, CommandEventArgs e)
        {
            try
            {


                if (e.CommandName == "sua")
                {
                    int ma = Convert.ToInt16(e.CommandArgument);
                    Entity.BaiHat bh = data.layBaiHat(ma);
                    txttenbh.Text = bh.tenBaiHat;
                    txtmabh.Text = bh.maBaiHat.ToString();
                    dlalbum.DataValueField = bh.maAlbum.ToString();
                    dlmatl.DataValueField = bh.maTheLoai.ToString();
                    dlcasi.DataValueField = bh.maCaSi.ToString();
                    dlTinhTrang.Text = bh.tinhTrang.ToString();
                }
            }
            catch(Exception er)
            {
                mes.Text = "Lỗi " + er.Message;
            }
        }

        protected void btnSuaBaihat_Click(object sender, EventArgs e)
        {
            try
            {
                Entity.BaiHat bh = new Entity.BaiHat();
                bh.maBaiHat = int.Parse(txtmabh.Text);
                bh.tenBaiHat = txttenbh.Text;
                bh.maTheLoai = int.Parse(dlmatl.SelectedValue.ToString());
                bh.maCaSi = int.Parse(dlcasi.SelectedValue.ToString());
                bh.maAlbum = int.Parse(dlalbum.SelectedValue.ToString());
                bh.tinhTrang = dlTinhTrang.Text;
                string link = fileNhac.FileName;
                fileNhac.PostedFile.SaveAs(Server.MapPath("~/Music/" + link));
                bh.linkBaiHat = "Music/" + link.ToString();
                fileNhac.PostedFile.SaveAs(Server.MapPath("~/Picture/Music" + fileAnh.FileName));
                bh.anhBaiHat = fileAnh.FileName;
                bh.loiBaiHat = txtLoiBaiHat.Text;
                data.capNhatBaiHat(bh);
                LoadDS();
                mes.Text = ("Cập nhật thành công");
                txtmabh.Text = "";
            }
            catch(Exception er)
            {
                mes.Text = "Lỗi " + er.Message;
            }
        }
    }
}