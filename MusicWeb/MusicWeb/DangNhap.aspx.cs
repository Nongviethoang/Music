using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MusicWeb.Entity;



namespace MusicWeb
{
    public partial class DangNhap : System.Web.UI.Page
    {
       
        List<ThanhVien> ls = new DataUtils().dsThanhVien();
        protected void Page_Load(object sender, EventArgs e)
        {
            renderInputType();
        }
        public void renderInputType()
        {
            txtmatkhau.Attributes.Add("type", "password");
        }
        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            
            string admin = "admin";
            string pass = "123456";
            if (username.Text.Equals(admin) && txtmatkhau.Text.Equals(pass))
            {
                Response.Redirect("Admin/Admin.aspx");
            }
            else
            {
                foreach (ThanhVien tv in ls)
                {
                    if (tv.tenDangNhap.Equals(username.Text) && tv.matKhau.Equals(txtmatkhau.Text))
                    {
                        Session["ThanhVienHienTai"] = tv;
                        Response.Redirect("TrangChu.aspx");
                    }
                }
            }
            
            
        }
    }
}