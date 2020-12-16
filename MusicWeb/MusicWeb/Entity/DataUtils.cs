using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.Sql;
using MusicWeb.Admin;
using MusicWeb.Entity;
namespace MusicWeb.Entity
{
    public class DataUtils
    {
        SqlConnection con;
        public DataUtils()
        {
            string sqlCon = @"Data Source=.;Initial Catalog=DatabaseMusic;Integrated Security=True";
            con = new SqlConnection(sqlCon);
        }
        //lấy danh sách chủ đề
        public List<ChuDe> dsChuDe()
        {
            con.Open();
            string sql = "select * from tblChuDe";
            List<ChuDe> list = new List<ChuDe>();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while(rd.Read())
            {
                ChuDe cd = new ChuDe();
                cd.maChuDe = (int)rd["maChuDe"];
                cd.tenChuDe = (string)rd["tenChuDe"];
                list.Add(cd);
            }
            con.Close();
            return list;
        }
        //thêm chủ đề mới
        public void themChuDe(ChuDe cd)
        {
            con.Open();
            string sql = "insert into tblChuDe values(@tenChuDe)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("tenChuDe", cd.tenChuDe);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        //Xóa chủ đề
        public void xoaChuDe(int macd)
        {
            con.Open();
            string sql = "delete from tblChuDe where machude=@macd";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("macd", macd);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        //sửa chủ đề
        public ChuDe suaCD(int macd)
        {

            con.Open();
            string sql = "select * from tblChuDe where machude=@macd";
            ChuDe cd = null;
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("macd", macd);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                cd = new ChuDe();
                cd.maChuDe = (int)rd["maChuDe"];
                cd.tenChuDe = (string)rd["tenChuDe"];
                
            }
            con.Close();
            return cd;

        }
        //Cập nhật
         public void capNhat(ChuDe cd)
        {
            con.Open();
            string sql = "update tblChuDe set tenchude=@tenchude where machude=@machude";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("machude", cd.maChuDe);
            cmd.Parameters.AddWithValue("tenchude", cd.tenChuDe);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        //public List<TheLoai> dsTheLoai()
        //{
        //    con.Open();
        //    string sql = "select * from tblTheLoai";
        //    List<TheLoai> list = new List<TheLoai>();
        //    SqlCommand cmd = new SqlCommand(sql, con);
        //    SqlDataReader rd = cmd.ExecuteReader();
        //    while (rd.Read())
        //    {
        //        TheLoai tl = new TheLoai();
        //        tl.maChuDe = (int)rd["maChuDe"];
        //        tl.maTheLoai = (int)rd["maTheLoai"];
        //        tl.tenTheLoai = (string)rd["tenTheLoai"];
        //        list.Add(tl);
        //    }
        //    con.Close();
        //    return list;

        //}
        //public List<BaiHat> dsBaiHat()
        //{
        //    con.Open();
        //    string sql = "select * from tblBaiHat";
        //    List<BaiHat> list = new List<BaiHat>();
        //    SqlCommand cmd = new SqlCommand(sql, con);
        //    SqlDataReader rd = cmd.ExecuteReader();
        //    while(rd.Read())
        //    {
        //        BaiHat bh = new BaiHat();
        //        bh.maBaiHat = (int)rd["maBaiHat"];
        //        bh.tenBaiHat = (string)rd["tenBaiHat"];
        //        bh.linkBaiHat = (string)rd["linkBaiHat"];
        //        bh.maAlbum = (int)rd["maAlbum"];
        //        bh.maCaSi = (int)rd["maCaSi"];
        //        bh.maTheLoai = (int)rd["maTheLoai"];
        //        bh.tinhTrang = (string)rd["Tình trạng"];
        //        bh.anh = (string)rd["Anh"];
        //        list.Add(bh);
        //    }
        //    con.Close();
        //    return list;

        //}
        //Thêm thể loại
        public void themTheLoai(TheLoai tl)
        {
            con.Open();
            string sql = "insert into tblTheLoai values(@tentheloai,@macd)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("tentheloai", tl.tenTheLoai);
            cmd.Parameters.AddWithValue("macd", tl.maChuDe);
            cmd.ExecuteNonQuery();
            con.Close();
        }


    }
}