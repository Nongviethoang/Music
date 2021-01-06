using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MusicWeb.Entity;
namespace MusicWeb
{
    public partial class Register : System.Web.UI.Page
    {
        DataUtils data = new DataUtils();
        List<ThanhVien> list = new DataUtils().dsThanhVien();
        Boolean check = true;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndangki_Click(object sender, EventArgs e)
        {
         
                string ten = txttenDN.Text;
                string mk = txtMk.Text;
                string email = txtemail.Text;
                string ht = txtHt.Text;
               
                if(ten==""||mk==""||email==""||ht=="")
                {
                    mes.Text = "Không được bỏ trống";
                }
                else
                {
                    foreach(ThanhVien item in list)
                {
                    if(item.tenDangNhap.ToUpper().Equals(ten.ToUpper()))
                    {
                        check = false;
                        Response.Write("<script> alert('Hãy chọn tên đăng nhập khác!') </script>");
                        break;
                    }
                }
                    if(check)
                {
                    ThanhVien tv = new ThanhVien();
                    tv.tenDangNhap = ten;
                    tv.matKhau = mk;
                    tv.hoTen = ht;
                    tv.email = email;
                   string anh = fileAnh.FileName;
                    fileAnh.PostedFile.SaveAs(Server.MapPath("~/Picture/Icon/" + anh));
                    tv.anh = anh;
                    new DataUtils().themThanhVien(tv);
                    Response.Redirect("DangNhap.aspx");
                }
                    
                }
        }
    }
}