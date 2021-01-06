using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MusicWeb.Entity;
namespace MusicWeb
{
    public partial class CaSi : System.Web.UI.Page
    {
        DataUtils data = new DataUtils();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dlCaSi.DataSource = data.dsCaSi();
                dlCaSi.DataBind();
                //if (Request.QueryString["id"] != null)
                //{
                //    int macs = Convert.ToInt16(Request.QueryString["id"].ToString());
                //    ListMusic.DataSource = data.layBaiHatCungCaSi(macs);
                //    ListMusic.DataBind();
                //}
            }
        }
    }
}