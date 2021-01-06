using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MusicWeb.Entity;
namespace MusicWeb.Admin
{
    public partial class QuanLyCaSi : System.Web.UI.Page
    {
        DataUtils data = new DataUtils();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadCS();
        }
        public void LoadCS()
        {
            dsCaSi.DataSource = data.dsCaSi();
            DataBind();
        }
        protected void xoa_Command(object sender, CommandEventArgs e)
        {
            try
            {
                if(e.CommandName=="xoa")
                {
                    int ma = Convert.ToInt16(e.CommandArgument);
                    data.xoaCaSi(ma);
                    LoadCS();
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
                Entity.CaSi c = data.layCaSi(ma);
                txtMaCS.Text = c.maCaSi.ToString();
                txtTenCs.Text = c.tenCaSi;
                txtinfor.Text = c.thongTin;
            }
        }

        protected void btnThemCs_Click(object sender, EventArgs e)
        {
            try
            {

                Entity.CaSi c = new Entity.CaSi();
                c.tenCaSi = txtTenCs.Text;
                imgCS.PostedFile.SaveAs(Server.MapPath("~/Picture/Singer" + imgCS.FileName));
                c.anh = imgCS.FileName;
                c.thongTin = txtinfor.Text;
                data.themCaSi(c);
                mes.Text = "Thêm thành công";
                LoadCS();
            }
            catch (Exception er)
            {
                mes.Text = "Lỗi " + er.Message;
            }
        }

        protected void btnSuaCs_Click(object sender, EventArgs e)
        {
            try
            {
                Entity.CaSi c = new Entity.CaSi();
                c.tenCaSi = txtTenCs.Text;
                c.thongTin = txtinfor.Text;
                imgCS.PostedFile.SaveAs(Server.MapPath("~/Picture/Singer" + imgCS.FileName));
                c.anh = imgCS.FileName;
                c.maCaSi = int.Parse(txtMaCS.Text);
                data.capNhatCaSi(c);
                LoadCS();
                mes.Text = "Cập nhật thành công";
                txtMaCS.Text = "";
            }
            catch(Exception er)
            {
                mes.Text = "Lỗi " + er.Message;
            }
        }
    }
}