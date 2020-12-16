using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MusicWeb.Entity;

namespace WebNgheNhac.Admin
{
    public partial class QuanLyTheLoai : System.Web.UI.Page
    {
        DataUtils data = new DataUtils();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                dlchude.DataSource = data.dsChuDe();
                dlchude.DataTextField = "tenchude";
                dlchude.DataValueField = "machude";
                DataBind();
            }
        }

        protected void btnThemTl_Click(object sender, EventArgs e)
        {
            try
            {
                TheLoai tl = new TheLoai();
                tl.tenTheLoai = txtTenTheLoai.Text;
                tl.maChuDe =int.Parse(dlchude.SelectedValue.ToString());
                data.themTheLoai(tl);
                mess.Text = "Thêm thành công";
            }
            catch
            {
                mess.Text = "Thêm  thành công";
            }
        }
    }
}