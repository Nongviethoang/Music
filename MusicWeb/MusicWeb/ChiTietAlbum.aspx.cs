using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MusicWeb.Entity;
namespace MusicWeb
{

    public partial class ChiTietAlbum : System.Web.UI.Page
    {
        DataUtils data = new DataUtils();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                HienThi();
        }
        public void HienThi()
        {
            int ma = int.Parse(Request.QueryString["id"].ToString());
            dlAlbum.DataSource = data.layAlbumTheoma(ma);
            dlAlbum.DataBind();
            ListMusic.DataSource = data.layBaiHatCungAlbum(ma);
            ListMusic.DataBind();

        }
    }
}