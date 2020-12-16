using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MusicWeb
{
    public partial class YourSong : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            deleteSong();
            if (Session["user"] != null)
            {
                User user = (User) Session["user"];
                String idKey = user.Id;

                String path = Server.MapPath("musics.xml");
                List<Musics> listSong = XMLFile.getMusicListInXML(path);

                List<Musics> yourSong = new List<Musics>();
                foreach(Musics musics in listSong)
                {
                    if(musics.IdUser == idKey)
                    {
                        yourSong.Add(musics);
                    }
                }
                YourMusic.DataSource = yourSong;
                YourMusic.DataBind();
            }
            else
            {
                Response.Redirect("LogIn.aspx");
            }
        }

        public void deleteSong()
        {
            if (Request.Form["Delete"] != null)
            {
                String path = Server.MapPath("musics.xml");
                if (XMLFile.deteteMusic(path, Request.Form["Delete"]))
                {
                    Response.Write("<script> alert('Delete Song Access!') </script>");
                }
            }
        }
    }
}