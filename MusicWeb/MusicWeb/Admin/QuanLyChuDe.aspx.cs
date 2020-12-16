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
                ChuDe cd = new ChuDe();
                cd.tenChuDe = txtTenChuDe.Text;
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
            
        }
        protected void Xoa_Click(object sender, CommandEventArgs e)
        {
           if(e.CommandName=="xoa")
            {
                int ma = Convert.ToInt16(e.CommandArgument);
                data.xoaChuDe(ma);
            }
        }
        protected void Sua_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "sua")
            {
                int ma = Convert.ToInt16(e.CommandArgument);
                ChuDe cd = data.suaCD(ma);
                txtMaCd.Text = cd.maChuDe.ToString();
                txtTenChuDe.Text = cd.tenChuDe.ToString();

               
            }
        }
    }
}