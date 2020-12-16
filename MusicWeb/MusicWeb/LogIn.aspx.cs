using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MusicWeb
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            String name = Request.Form["name"];
            String pass = Request.Form["password"];
            String path = Server.MapPath("users.xml");
            List<User> listU = XMLFile.getUserListInXML(path);

            if (name != null && pass != null)
            {
                foreach (User ur in listU)
                {
                    if (name.ToLower().Equals(ur.Nickname.ToLower()) && pass.ToLower().Equals(ur.Password.ToLower()))
                    {
                        Session["user"] = ur;
                        Response.Redirect("HomePage.aspx");
                    }
                    else
                    {
                        Response.Write("<script> alert('Tài khoản không hợp lệ! Mời nhập lại.'); </script>");
                    }
                }
            }
            else
            {
                Response.Write("<script> alert('Vui lòng điền đầy đủ thông tin!'); </script>");
            }
        }
    }
}