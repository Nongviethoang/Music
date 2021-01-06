using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MusicWeb.Entity;
namespace MusicWeb
{
    public partial class TheLoai : System.Web.UI.Page
    {
        DataUtils data = new DataUtils();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
            dlTheLoai.DataSource = new DataUtils().dsTheLoai();
            dlTheLoai.DataBind();
           
                if(Request.QueryString["id"]!=null)
                {
                    int matl = Convert.ToInt16(Request.QueryString["id"].ToString());
                    ListMusic.DataSource = data.layBaiHatCungTl(matl);
                    ListMusic.DataBind();
                }
            }
            
        }
       
    }
}