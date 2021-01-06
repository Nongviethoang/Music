using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MusicWeb.Entity;
namespace MusicWeb.Admin
{
    public partial class QuanLyChuDe : System.Web.UI.Page
    {
        DataUtils data = new DataUtils();
        protected void Page_Load(object sender, EventArgs e)
        {if(!IsPostBack)
            LoadDs();
        }

        protected void btnThemCd_Click(object sender, EventArgs e)
        {
            try
            {
                Entity.ChuDe cd = new Entity.ChuDe();
                cd.tenChuDe = txttencd.Text;
                data.themChuDe(cd);
                mess.Text = "Thêm thành công";
                LoadDs();
            }
            catch(Exception es)
            {
                mess.Text = "Loi" + es.Message;
            }
        }
        public void LoadDs()
        {
            dsChuDe.DataSource = data.dsChuDe();
            DataBind();
        }
        protected void Xoa_Click(object sender, CommandEventArgs e)
        {
            try
            {

           
           if(e.CommandName=="xoa")
            {
                int ma = Convert.ToInt16(e.CommandArgument);
                data.xoaChuDe(ma);
                LoadDs();
            }
            }
            catch(Exception ex)
            {
                mess.Text = "Lỗi " + ex.Message;
            }
        }
        protected void Sua_Click(object sender, CommandEventArgs e)
        {
            if(e.CommandName=="sua")
            {
                int macd = Convert.ToInt16(e.CommandArgument);
                Entity.ChuDe cd = data.suaCD(macd);
                txttencd.Text = cd.tenChuDe;
                txtmacd.Text = cd.maChuDe.ToString();

            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            Entity.ChuDe cd = new Entity.ChuDe();
            cd.maChuDe = int.Parse(txtmacd.Text);
            cd.tenChuDe = txttencd.Text;
            data.capNhatChuDe(cd);
            LoadDs();
            mess.Text = "Sửa thành công";
            txtmacd.Text = "";
        }
    }
}