using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MusicWeb.Admin;
using MusicWeb.Entity;

namespace MusicWeb.Admin
{
    public partial class QuanLyThanhVien : System.Web.UI.Page
    {
        DataUtils data = new DataUtils();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadTV();
        }
        public void LoadTV()
        {
            dsThanhVien.DataSource = data.dsThanhVien();
            DataBind();
        }
        protected void xoa_Command(object sender, CommandEventArgs e)
        {

        }

        protected void xoa_Command1(object sender, CommandEventArgs e)
        {
            try
            {
                if(e.CommandName=="xoa")
                {
                    int ma = Convert.ToInt16(e.CommandArgument);
                    data.xoaThanhVien(ma);
                    LoadTV();
                }
                
            }
            catch(Exception er)
            {
                mess.Text = "Lỗi " + er.Message;
            }
        }

        protected void sua_Command(object sender, CommandEventArgs e)
        {
            if(e.CommandName=="sua")
            {
                int ma = Convert.ToInt16(e.CommandArgument);
                ThanhVien tv = data.getThanhVien(ma);
                txtMaTV.Text = tv.maThanhVien.ToString();
                txtTenDN.Text = tv.tenDangNhap;
                txtTenTV.Text = tv.hoTen;
                txtemail.Text = tv.email;
                txtMK.Text = tv.matKhau;
                //fileanh.SaveAs(tv.anh);
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {


                ThanhVien tv = new ThanhVien();
                tv.matKhau = txtMK.Text;
                tv.hoTen = txtTenTV.Text;
                tv.tenDangNhap = txtTenDN.Text;
                tv.maThanhVien = int.Parse(txtMaTV.Text);
                
                fileanh.PostedFile.SaveAs(Server.MapPath("~/Picture/Icon/" + fileanh.FileName));
                tv.anh = fileanh.FileName;

                tv.email = txtemail.Text;
                data.capNhatThanhVien(tv);
                LoadTV();
                mess.Text = "Cập nhật thành công";
                txtMaTV.Text = "";
            }
            catch(Exception er)
            {
                mess.Text = "Lỗi " + er.Message;
            }
        }
    }
}