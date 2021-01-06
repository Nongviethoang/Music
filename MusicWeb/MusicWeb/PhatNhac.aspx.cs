using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MusicWeb.Entity;
namespace MusicWeb
{
    public partial class PhatNhac : System.Web.UI.Page
    {
        DataUtils data = new DataUtils();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            hienThi();
            
        }
        public void hienThi()
        {
            int ma = int.Parse(Request.QueryString["id"].ToString());
            if(ma==null)
            {
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                ListMusic.DataSource = data.layBaiHatTheoMa(ma);
                listCmt.DataSource = data.dsCamNhan(ma);
                listCmt.DataBind();
                ListMusic.DataBind();
                
            }
           
        }
        public void hienThiCmt()
        {
            int ma = int.Parse(Request.QueryString["id"].ToString());
            if (ma == null)
            {
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                
                listCmt.DataSource = data.dsCamNhan(ma);
                listCmt.DataBind();
             

            }

        }

        protected void btnCmt_Click(object sender, EventArgs e)
        {
            if (Session["ThanhVienHienTai"] != null)
            {
                ThanhVien tv = (ThanhVien)Session["ThanhVienHienTai"];
                CamNhan cmt = new CamNhan();
                cmt.maBaiHat = int.Parse(Request.QueryString["id"].ToString());
                cmt.maThanhVien = tv.maThanhVien;
                cmt.thoiGian = DateTime.Now.ToString();
                cmt.noiDung =txtinput.Text;
                data.themBinhLuan(cmt);
                hienThiCmt();
            }
            else
            {
                Response.Write("<script> alert('Bạn cần đăng nhập để bình luận!') </script>");
            }


        }

        protected void listCmt_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ListMusic_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}