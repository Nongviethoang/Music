using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MusicWeb
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
               
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            String name = Request.Form["name"];
            String pass = Request.Form["password"];
            String retypePass = Request.Form["retypePassword"];
            String birth = Request.Form["birthday"]; 
            String email = Request.Form["email"];

            if (name != null && pass == retypePass && email != null && pass != null)
            { 
                Random rd = new Random();
                String id = "" + (100000 + rd.Next(999999));
                User user = new User(id, name, pass, email, birth, "Picture/avt_user.jpg");
                String path = Server.MapPath("users.xml");
                if (XMLFile.addUserToList(path, user))
                {
                    Response.Redirect("LogIn.aspx");
                }
               /* else
                {
                    Response.Write("<script> alert('Create account fail!'); </script>");
                }*/
            }
            else
            {
                Response.Write("<script> alert('Enter the correct, please!'); </script>");
            }
        }
    }
}