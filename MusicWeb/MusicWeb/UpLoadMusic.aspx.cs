using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MusicWeb
{
    public partial class UpMusic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String userID =( (User) Session["user"]).Id;
            String nameMusic = nameMs.Value;
            String musicSinger = singerMs.Value;
            String mp3Url = xFileMusicPath.Value;
            String imgUrl = xFilePath.Value;
            String albumName = DropDownList1.SelectedValue.ToString();
            Random rd = new Random();
            String musicID = "" + (100000 + rd.Next(899999));

            if (nameMusic != null && musicSinger != null && mp3Url != null)
            {
                if (imgUrl == "")
                {
                    imgUrl = "/Picture/logoMusic.jpg";
                }
                Musics musics = new Musics(musicID, userID, nameMusic, mp3Url, imgUrl, musicSinger, "", albumName);
                String path = Server.MapPath("musics.xml");
                if (XMLFile.addMusicToList(path, musics))
                {
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    Response.Write("<script> alert('Upload song fail!'); </script>");
                }
            }
            else
            {
                Response.Write("<script> alert('Enter full, please!'); </script>");
            }
        }
    }
 }
