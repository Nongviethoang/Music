using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MusicWeb.Entity;

namespace MusicWeb
{
    public partial class Album : System.Web.UI.Page
    {
        DataUtils data = new DataUtils();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                dlAlbum.DataSource = data.dsAlbum();
                dlAlbum.DataBind();
               
            }

        }
    }
}