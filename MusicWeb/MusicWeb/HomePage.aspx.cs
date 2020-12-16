using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebNgheNhac.Admin;

namespace MusicWeb
{
    public partial class List: System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Show music
            String path = Server.MapPath("musics.xml");
            List<Musics> listSong =  XMLFile.getMusicListInXML(path);
            ListMusic.DataSource = listSong;
            ListMusic.DataBind();
        }
    }
}