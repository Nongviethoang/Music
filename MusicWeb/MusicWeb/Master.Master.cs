using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MusicWeb.Entity;
namespace MusicWeb
{
    public partial class Master : System.Web.UI.MasterPage
    {
        DataUtils data = new DataUtils();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ThanhVienHienTai"] != null)
           {
                 ThanhVien tv= (ThanhVien)Session["ThanhVienHienTai"];
                showName.Text = tv.hoTen;
                avatar.ImageUrl = "Picture/Icon/"+tv.anh;
           }
            
        }
        
        protected void Log_In(object sender, EventArgs e)
        {
            if (Session["ThanhVienHienTai"] == null)
            {
                Response.Redirect("DangNhap.aspx");
            }
            else
            {
                Response.Write("<script> alert('Bạn đã đăng nhập!') </script>");
            }
        }

        protected void Log_Out(object sender, EventArgs e)
        {
            if (Session["ThanhVienHienTai"] != null)
            {
                Session["ThanhVienHienTai"] = null;
                Response.Redirect("TrangChu.aspx");
            }
            else
            {
                Response.Write("<script> alert('Bạn chưa đăng nhập!') </script>");
            }
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            if (Session["ThanhVienHienTai"] != null)
            {
                Session["ThanhVienHienTai"] = null;
                Response.Redirect("TrangChu.aspx");
            }
            else
            {
                Response.Write("<script> alert('Bạn chưa đăng nhập!') </script>");
            }
        }

        protected void searchM_Click(object sender, EventArgs e)
        {
           
        }
    }
}