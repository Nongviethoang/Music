using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MusicWeb.Entity;

namespace WebNgheNhac.Admin
{
    public partial class QuanLyTheLoai : System.Web.UI.Page
    {
        DataUtils data = new DataUtils();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadTL();
                dlchude.DataSource = data.dsChuDe();
                dlchude.DataTextField = "tenchude";
                dlchude.DataValueField = "machude";
                DataBind();
            }
        }
        public void LoadTL()
        {
            dsTheLoai.DataSource = data.dsTheLoai();
            DataBind();
        }
        protected void btnThemTl_Click(object sender, EventArgs e)
        {
           
        }

        protected void qltl_Click(object sender, EventArgs e)
        {
            try
            {
                TheLoai tl = new TheLoai();
                tl.tenTheLoai = txtTenTL.Text;
                tl.maChuDe = int.Parse(dlchude.SelectedValue.ToString());
                data.themTheLoai(tl);
                LoadTL();
                mes.Text = "Them thanh cong";
                TheLoai tla = new TheLoai();
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
                    data.xoaTheLoai(ma);
                    LoadTL();
                }
            }
            catch (Exception er)
            {
                mes.Text = "Lỗi " + er.Message;
            }
        }

        protected void sua_Command(object sender, CommandEventArgs e)
        {
            if(e.CommandName=="sua")
            {
                int ma = Convert.ToInt16(e.CommandArgument);
                TheLoai tls = data.getTheLoai(ma);
                txtmatl.Text = tls.maTheLoai.ToString();
                txtTenTL.Text = tls.tenTheLoai;
                dlchude.SelectedValue = tls.maChuDe.ToString() ;
            }
        }
        protected void btnSuaTl_Click(object sender, EventArgs e)
        {
            try
            {
                TheLoai tl = new TheLoai();
                tl.maChuDe = int.Parse(dlchude.SelectedValue.ToString());
                tl.tenTheLoai = txtTenTL.Text;
                tl.maTheLoai = int.Parse(txtmatl.Text);
                data.capNhatTheLoai(tl);
                LoadTL();
                mes.Text = "Sửa thành công";
                txtmatl.Text = "";
            }
            catch(Exception er)
            {
                mes.Text = "Lỗi " + er.Message;
            }
        }
    }
}