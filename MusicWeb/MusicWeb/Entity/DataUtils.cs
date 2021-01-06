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
        // lấy danh sách chủ đề
        public List<ChuDe> dsChuDe()
        {
            con.Open();
            string sql = "select * from tblChuDe";
            List<ChuDe> list = new List<ChuDe>();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                ChuDe cd = new ChuDe();
                cd.maChuDe = (int)rd["maChuDe"];
                cd.tenChuDe = (string)rd["tenChuDe"];
                list.Add(cd);
            }
            con.Close();
            return list;
        }
        // thêm chủ đề mới
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
        //laays chủ đề để sửa
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

        ////Cập nhật chủ để
        public void capNhatChuDe(ChuDe cd)
        {
            con.Open();
            string sql = "update tblChuDe set tenchude=@tenchude where machude=@machude";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("machude", cd.maChuDe);
            cmd.Parameters.AddWithValue("tenchude", cd.tenChuDe);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        //Lấy danh sách thể loại
        public List<TheLoai> dsTheLoai()
        {

            con.Open();
            string sql = "select * from tblTheLoai";
            List<TheLoai> li = new List<TheLoai>();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                TheLoai tl = new TheLoai();
                tl.maTheLoai = (int)rd["maTheLoai"];
                tl.tenTheLoai = (string)rd["tenTheLoai"];
                tl.maChuDe = (int)rd["maChuDe"];
                li.Add(tl);

            }
            con.Close();
            return li;
        }
        //Thêm thể loại
        public void themTheLoai(TheLoai tl)
        {
            con.Open();
            string sql = "insert into tblTheLoai values(@ten,@macd)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ten", tl.tenTheLoai);
            cmd.Parameters.AddWithValue("macd", tl.maChuDe);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        //Xóa thể loại
        public void xoaTheLoai(int matl)
        {
            con.Open();
            string sql = "delete from tblTheLoai where maTheLoai=@matl";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("matl", matl);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        //Lấy 1 thể loại
        public TheLoai getTheLoai(int matl)
        {
            con.Open();
            string sql = "select * from tblTheLoai where maTheLoai=@matl";
            TheLoai tls = null;
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("matl", matl);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                tls = new TheLoai();
                tls.maChuDe = (int)rd["maChuDe"];
                tls.tenTheLoai = (string)rd["tenTheLoai"];
                tls.maTheLoai = (int)rd["maTheLoai"];

            }
            con.Close();
            return tls;

        }
        //Cập nhật lại bảng chủ đề
        public void capNhatTheLoai(TheLoai tl)
        {
            con.Open();
            string sql = "update tblTheLoai set tenTheLoai=@tentl,maChuDe=@maChude where maTheLoai=@maTl";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("tentl", tl.tenTheLoai);
            cmd.Parameters.AddWithValue("maTl", tl.maTheLoai);
            cmd.Parameters.AddWithValue("maChuDe", tl.maChuDe);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        //Lấy danh sách thành viên
        public List<ThanhVien> dsThanhVien()
        {
            con.Open();
            string sql = "select * from tblThanhVien";
            List<ThanhVien> list = new List<ThanhVien>();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                ThanhVien tv = new ThanhVien();
                tv.maThanhVien = (int)rd["maThanhVien"];
                tv.tenDangNhap = (string)rd["tenDangNhap"];
                tv.matKhau = (string)rd["matKhau"];
                tv.hoTen = (string)rd["hoTen"];
                tv.email = (string)rd["email"];
                tv.anh = (string)rd["anh"];
                list.Add(tv);
            }
            con.Close();
            return list;
        }
        //Xóa thành viên
        public void xoaThanhVien(int matv)
        {
            con.Open();
            string sql = "delete from tblThanhVien where maThanhVien=@matv";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("matv", matv);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        //Lấy 1 thành viên
        public ThanhVien getThanhVien(int matv)
        {
            con.Open();
            string sql = "select * from tblThanhVien where maThanhVien=@matv";
            ThanhVien tv = null;
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("matv", matv);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                tv = new ThanhVien();

                tv.maThanhVien = (int)rd["maThanhVien"];
                tv.tenDangNhap = (string)rd["tenDangNhap"];
                tv.matKhau = (string)rd["matKhau"];
                tv.hoTen = (string)rd["hoTen"];
                tv.email = (string)rd["email"];
                tv.anh = (string)rd["anh"];

            }
            con.Close();
            return tv;

        }
        //Cập nhật lại bảng chủ đề
        public void capNhatThanhVien(ThanhVien tv)
        {
            con.Open();
            string sql = "update tblThanhVien set tenDangNhap=@tendn,matKhau=@mk,hoTen=@ht,email=@email,anh=@anh where maThanhVien=@matv";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("tendn", tv.tenDangNhap);
            cmd.Parameters.AddWithValue("mk", tv.matKhau);
            cmd.Parameters.AddWithValue("ht", tv.hoTen);
            cmd.Parameters.AddWithValue("email", tv.email);
            cmd.Parameters.AddWithValue("anh", tv.anh);
            cmd.Parameters.AddWithValue("matv", tv.maThanhVien);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        //Thêm thành viên
        public void themThanhVien(ThanhVien tv)
        {
            con.Open();
            string sql = "insert into tblThanhVien values (@tendn,@mk,@ht,@email,@anh)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("tendn", tv.tenDangNhap);
            cmd.Parameters.AddWithValue("mk", tv.matKhau);
            cmd.Parameters.AddWithValue("ht", tv.hoTen);
            cmd.Parameters.AddWithValue("email", tv.email);
            cmd.Parameters.AddWithValue("anh", tv.anh);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        //Thêm ca sĩ
        public void themCaSi(CaSi cs)
        {
            con.Open();
            string sql = "insert into tblCaSi values(@ten,@anh,@tt)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ten", cs.tenCaSi);
            cmd.Parameters.AddWithValue("anh", cs.anh);
            cmd.Parameters.AddWithValue("tt", cs.thongTin);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        //Lấy danh sách ca sĩ
        public List<CaSi> dsCaSi()
        {
            con.Open();
            List<CaSi> li = new List<CaSi>();
            string sql = "select * from tblCaSi";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                CaSi cs = new CaSi();
                cs.maCaSi = (int)rd["maCaSi"];
                cs.tenCaSi = (string)rd["tenCaSi"];
                cs.anh = (string)rd["anh"];
                cs.thongTin = (string)rd["thongTin"];
                li.Add(cs);
            }
            con.Close();
            return li;
        }
        //Xóa một ca sĩ
        public void xoaCaSi(int ma)
        {
            con.Open();
            string sql = "delete from tblCaSi where maCaSi=@ma";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ma", ma);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        //Lấy ra 1 ca sĩ
        public CaSi layCaSi(int ma)
        {
            con.Open();
            CaSi c = null;
            string sql = "select * from tblCaSi where maCaSi=@ma";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ma", ma);
            SqlDataReader rd = cmd.ExecuteReader();

            while (rd.Read())
            {
                c = new CaSi();
                c.maCaSi = (int)rd["maCaSi"];
                c.tenCaSi = (string)rd["tenCaSi"];
                c.anh = (string)rd["anh"];
                c.thongTin = (string)rd["thongTin"];
            }
            con.Close();
            return c;
        }
        //Cập nhật lại bảng ca sĩ
        public void capNhatCaSi(CaSi cs)
        {
            con.Open();
            string sql = "update tblCaSi set tenCaSi=@ten, anh=@anh,thongTin=@tt where maCaSi=@ma";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ten", cs.tenCaSi);
            cmd.Parameters.AddWithValue("ma", cs.maCaSi);
            cmd.Parameters.AddWithValue("anh", cs.anh);
            cmd.Parameters.AddWithValue("tt", cs.thongTin);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        //Lấy danh sách album
        public List<Album> dsAlbum()
        {
            con.Open();
            List<Album> li = new List<Album>();
            string sql = "select * from tblAlbumBaiHat";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                Album a = new Album();
                a.maAlbum = (int)rd["maAlbum"];
                a.tenAlbum = (string)rd["tenAlbum"];
                a.moTa = (string)rd["moTa"];
                a.anh = (string)rd["anh"];
                a.thoiGian = (string)rd["thoiGian"];
                li.Add(a);
            }
            con.Close();
            return li;
        }
        //Thêm album
        public void themAlbum(Album a)
        {
            con.Open();
            string sql = "insert into tblAlbumBaiHat values(@ten,@mt,@anh,@tg)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ten", a.tenAlbum);
            cmd.Parameters.AddWithValue("mt", a.moTa);
            cmd.Parameters.AddWithValue("anh", a.anh);
            cmd.Parameters.AddWithValue("tg", a.thoiGian);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        //Xóa album
        public void xoaAlbum(int ma)
        {
            con.Open();
            string sql = "delete from tblAlbumBaiHat where maAlbum=@ma";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ma", ma);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        //Lấy ra 1 album để sửa
        public Album layAlbum(int ma)
        {
            con.Open();
            Album a = null;
            string sql = "select * from tblAlbumBaiHat where maAlbum=@ma";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ma", ma);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                a = new Album();
                a.maAlbum = (int)rd["maAlbum"];
                a.tenAlbum = (string)rd["tenAlbum"];
                a.moTa = (string)rd["moTa"];
                a.anh = (string)rd["anh"];
                a.thoiGian = (string)rd["thoiGian"];

            }
            con.Close();
            return a;

        }
        //Cập nhật lại bảng album
        public void capNhatAblum(Album a)
        {
            con.Open();
            string sql = "update tblAlbumBaiHat set tenAlbum=@ten,mota=@mt,anh=@anh,thoiGian=@tg where maAlbum=@ma";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ten", a.tenAlbum);
            cmd.Parameters.AddWithValue("ma", a.maAlbum);
            cmd.Parameters.AddWithValue("mt", a.moTa);
            cmd.Parameters.AddWithValue("anh", a.anh);
            cmd.Parameters.AddWithValue("tg", a.thoiGian);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        //Danh sách bài hat
        public List<BaiHat> dsBaiHat()
        {
            con.Open();
            string sql = "select * from tblBaiHat";
            List<BaiHat> list = new List<BaiHat>();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                BaiHat bh = new BaiHat();
                bh.maBaiHat = (int)rd["maBaiHat"];
                bh.tenBaiHat = (string)rd["tenBaiHat"];
                bh.linkBaiHat = (string)rd["linkBaiHat"];
                bh.tinhTrang = (string)rd["tinhTrang"];
                bh.maAlbum = (int)rd["maAlbum"];
                bh.maCaSi = (int)rd["maCaSi"];
                bh.maTheLoai = (int)rd["maTheLoai"];
                bh.anhBaiHat = (string)rd["anhBaiHat"];
                bh.loiBaiHat = (string)rd["loiBaiHat"];
                list.Add(bh);
            }
            con.Close();
            return list;

        }
        //Thêm bài hat
        public void themBaiHat(BaiHat bh)
        {
            con.Open();
            string sql = "insert into tblBaiHat values(@ten,@link,@tt,@tl,@macs,@al,@anh,@loi)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ten", bh.tenBaiHat);
            cmd.Parameters.AddWithValue("link", bh.linkBaiHat);
            cmd.Parameters.AddWithValue("tt", bh.tinhTrang);
            cmd.Parameters.AddWithValue("tl", bh.maTheLoai);
            cmd.Parameters.AddWithValue("macs", bh.maCaSi);
            cmd.Parameters.AddWithValue("al", bh.maAlbum);
            cmd.Parameters.AddWithValue("anh", bh.anhBaiHat);
            cmd.Parameters.AddWithValue("loi", bh.loiBaiHat);
            cmd.ExecuteNonQuery();
            con.Close();

        }
        //xóa bài hát
        public void xoaBaiHat(int ma)
        {
            con.Open();
            string sql = "delete from tblBaiHat where maBaiHat=@ma";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ma", ma);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public BaiHat layBaiHat(int ma)
        {
            con.Open();
            BaiHat bh = null;
            string sql = "select * from tblBaiHat where maBaiHat=@ma";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ma", ma);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                bh = new BaiHat();
                bh.maBaiHat = (int)rd["maBaiHat"];
                bh.tenBaiHat = (string)rd["tenBaiHat"];
                bh.linkBaiHat = (string)rd["linkBaiHat"];
                bh.tinhTrang = (string)rd["tinhTrang"];
                bh.maAlbum = (int)rd["maAlbum"];
                bh.maCaSi = (int)rd["maCaSi"];
                bh.maTheLoai = (int)rd["maTheLoai"];
                bh.anhBaiHat = (string)rd["anhBaiHat"];
                bh.loiBaiHat = (string)rd["loiBaiHat"];

            }
            con.Close();
            return bh;
        }
        //Cập nhật lại bảng bài hát
        public void capNhatBaiHat(BaiHat bh)
        {
            con.Open();
            string sql = "update tblBaiHat set tenBaiHat=@ten,linkBaiHat=@link,tinhTrang=@tt," +
                "maTheLoai=@matl,maCaSi=@macs,maAlbum=@maal,anhBaiHat=@anh,loiBaiHat=@loi where maBaiHat=@ma";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ten", bh.tenBaiHat);
            cmd.Parameters.AddWithValue("ma", bh.maBaiHat);
            cmd.Parameters.AddWithValue("link", bh.linkBaiHat);
            cmd.Parameters.AddWithValue("tt", bh.tinhTrang);
            cmd.Parameters.AddWithValue("matl", bh.maTheLoai);
            cmd.Parameters.AddWithValue("macs", bh.maCaSi);
            cmd.Parameters.AddWithValue("maal", bh.maAlbum);
            cmd.Parameters.AddWithValue("anh", bh.anhBaiHat);
            cmd.Parameters.AddWithValue("loi", bh.loiBaiHat);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        //Lấy các bài hát cùng chủ đề
            public List<BaiHat> layBaiHatCungAlbum(int maAl)
            {
            con.Open();
            string sql = "select * from tblBaiHat where maAlbum=@maAl";
            List<BaiHat> li = new List<BaiHat>();
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("maAl", maAl);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                BaiHat bh = new BaiHat();

                bh.maBaiHat = (int)rd["maBaiHat"];
                bh.tenBaiHat = (string)rd["tenBaiHat"];
                bh.linkBaiHat = (string)rd["linkBaiHat"];
                bh.tinhTrang = (string)rd["tinhTrang"];
                bh.maAlbum = (int)rd["maAlbum"];
                bh.maCaSi = (int)rd["maCaSi"];
                bh.maTheLoai = (int)rd["maTheLoai"];
                bh.anhBaiHat = (string)rd["anhBaiHat"];
                li.Add(bh);
            }
            con.Close();
            return li;
        }
        //Danh sách các bài hát cùng thể loại
        public List<BaiHat> layBaiHatCungTl(int maTl)
        {
            con.Open();
            string sql = "select * from tblBaiHat where maTheLoai=@maTl";
            List<BaiHat> li = new List<BaiHat>();
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("maTl", maTl);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                BaiHat bh = new BaiHat();

                bh.maBaiHat = (int)rd["maBaiHat"];
                bh.tenBaiHat = (string)rd["tenBaiHat"];
                bh.linkBaiHat = (string)rd["linkBaiHat"];
                bh.tinhTrang = (string)rd["tinhTrang"];
                bh.maAlbum = (int)rd["maAlbum"];
                bh.maCaSi = (int)rd["maCaSi"];
                bh.maTheLoai = (int)rd["maTheLoai"];
                bh.anhBaiHat = (string)rd["anhBaiHat"];
                li.Add(bh);
            }
            con.Close();
            return li;
        }
        //Danh sách bài hát cùng ca sĩ
        public List<BaiHat> layBaiHatCungCaSi(int maCS)
        {
            con.Open();
            string sql = "select * from tblBaiHat where maCaSi=@maCs";
            List<BaiHat> li = new List<BaiHat>();
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("maCs", maCS);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                BaiHat bh = new BaiHat();

                bh.maBaiHat = (int)rd["maBaiHat"];
                bh.tenBaiHat = (string)rd["tenBaiHat"];
                bh.linkBaiHat = (string)rd["linkBaiHat"];
                bh.tinhTrang = (string)rd["tinhTrang"];
                bh.maAlbum = (int)rd["maAlbum"];
                bh.maCaSi = (int)rd["maCaSi"];
                bh.maTheLoai = (int)rd["maTheLoai"];
                bh.anhBaiHat = (string)rd["anhBaiHat"];
                li.Add(bh);
            }
            con.Close();
            return li;
        }
        //Lấy tên của ca sĩ theo mã bài hát
        public string tenCSTheoBaiHat(int maBH)
        {
            con.Open();
            string sql = "select tenCaSi from tblCaSi where maCaSi=@ma";
            string tenCS = null;
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("maAl", maBH);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                tenCS = (string)rd["tenCaSi"];
            }
            con.Close();
            return tenCS;
        }
        //Danh sách bài hát hot
        public List<BaiHat> layBaiHatHot()
        {
            con.Open();
            string sql = "select top(4) * from tblBaiHat ";
            List<BaiHat> li = new List<BaiHat>();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                BaiHat bh = new BaiHat();
                bh.maBaiHat = (int)rd["maBaiHat"];
                bh.tenBaiHat = (string)rd["tenBaiHat"];
                bh.linkBaiHat = (string)rd["linkBaiHat"];
                bh.tinhTrang = (string)rd["tinhTrang"];
                bh.maAlbum = (int)rd["maAlbum"];
                bh.maCaSi = (int)rd["maCaSi"];
                bh.maTheLoai = (int)rd["maTheLoai"];
                bh.anhBaiHat = (string)rd["anhBaiHat"];
                li.Add(bh);
            }
            con.Close();
            return li;
        }
        //Danh sách abum hot
        public List<Album> layAlbumHot()
        {
            con.Open();
            string sql = "select top(3) * from tblAlbumBaiHat ";
            List<Album> li = new List<Album>();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                Album a = new Album();
                a.maAlbum = (int)rd["maAlbum"];
                a.tenAlbum = (string)rd["tenAlbum"];
                a.moTa = (string)rd["moTa"];
                a.anh = (string)rd["anh"];
                a.thoiGian = (string)rd["thoiGian"];
                li.Add(a);
            }
            con.Close();
            return li;
        }
        //Lấy abum theo mã album
        public List<Album> layAlbumTheoma(int ma)
        {
            con.Open();
            string sql = "select * from tblAlbumBaiHat where maAlbum=@ma";
            List<Album> li = new List<Album>();
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ma", ma);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                Album a = new Album();
                a.maAlbum = (int)rd["maAlbum"];
                a.tenAlbum = (string)rd["tenAlbum"];
                a.moTa = (string)rd["moTa"];
                a.anh = (string)rd["anh"];
                a.thoiGian = (string)rd["thoiGian"];
                li.Add(a);
            }
            con.Close();
            return li;
        }
        //Danh sách bài hat
        public void dsBaiHatCS()
        {
            con.Open();
            string sql = "select maBaiHat,tenBaiHat,anhBaiHat,tenCaSi from tblBaiHat" +
                "inner join tblCaSi on tblBaiHat.maCaSi=tblCaSi.maCaSi";
            int maBaiHat = 0;
            string tenBaiHat = "";
            string anhBaiHat = "";
            string tenCaSi = "";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                maBaiHat= (int)rd["maBaiHat"];
                tenBaiHat= (string)rd["tenBaiHat"];
                anhBaiHat= (string)rd["anhBaiHat"];
                tenCaSi = (string)rd["tenCaSi"];
            }
            con.Close();
           
           

        }
        //Lấy bài hát theo mã
        public List<BaiHatTenCs> layBaiHatTheoMa(int ma)
        {
            con.Open();
            string sql = "select  maBaiHat,tenBaiHat,linkBaiHat,anhBaihat,loiBaiHat,tenCaSi from tblBaiHat inner join tblCaSi on tblBaiHat.maCaSi=tblCaSi.maCaSi where maBaiHat=@ma ";
            List<BaiHatTenCs> li = new List<BaiHatTenCs>();
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ma", ma);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                BaiHatTenCs bh = new BaiHatTenCs();
                bh.maBaiHat = (int)rd["maBaiHat"];
                bh.tenBaiHat = (string)rd["tenBaiHat"];
                bh.linkBaiHat = (string)rd["linkBaiHat"];
                bh.anhBaiHat = (string)rd["anhBaiHat"];
                bh.loiBaiHat = (string)rd["loiBaiHat"];
                bh.tenCaSi = (string)rd["tenCaSi"];
                li.Add(bh);
            }
            con.Close();
            return li;
        }
        //Lấy ca sĩ theo mã
        public List<CaSi> layCaSiTheoMa(int ma)
        {
            con.Open();
            List<CaSi> li = new List<CaSi>();
            string sql = "select * from tblCaSi where maCaSi=@ma";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ma", ma);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                CaSi cs = new CaSi();
                cs.maCaSi = (int)rd["maCaSi"];
                cs.tenCaSi = (string)rd["tenCaSi"];
                cs.anh = (string)rd["anh"];
                cs.thongTin = (string)rd["thongTin"];
                li.Add(cs);
            }
            con.Close();
            return li;
        }
        //Thêm bình luận cho bài hát
        public void themBinhLuan(CamNhan cn)
        {
            con.Open();
            string sql = "insert into tblCamNhan values(@nd,@tg,@mabh,@matv)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("nd", cn.noiDung);
            cmd.Parameters.AddWithValue("tg", cn.thoiGian);
            cmd.Parameters.AddWithValue("mabh", cn.maBaiHat);
            cmd.Parameters.AddWithValue("matv", cn.maThanhVien);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public List<CamNhanTV> dsCamNhan(int maBaihat)
        {
            con.Open();
            List<CamNhanTV> li = new List<CamNhanTV>();
            string sql = "select maCamNhan,noidung,thoigian,mabaihat,hoten from tblCamNhan " +
                "inner join tblThanhvien on tblCamNhan.mathanhvien=tblthanhvien.mathanhvien where maBaiHat=@ma";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ma", maBaihat);
            SqlDataReader rd = cmd.ExecuteReader();
            while(rd.Read())
            {
                CamNhanTV c = new CamNhanTV();
                c.maCamNhan = (int)rd["maCamNhan"];
                c.noiDung = (string)rd["noiDung"];
                c.thoiGian = (string)rd["thoiGian"];
                c.maBaiHat = (int)rd["maBaiHat"];
                c.tenThanhVien = (string)rd["hoten"];
                li.Add(c);
            }
            con.Close();
            return li;
        }
        //Tìm kiếm theo tên bài hát
        public List<BaiHat> BhTheoTen(string tenbh)
        {
            con.Open();
            string sql = "select * from tblBaiHat where tenBaihat like '%ten%'";
            List<BaiHat> li = new List<BaiHat>();
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ten", tenbh);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                BaiHat bh = new BaiHat();

                bh.maBaiHat = (int)rd["maBaiHat"];
                bh.tenBaiHat = (string)rd["tenBaiHat"];
                bh.linkBaiHat = (string)rd["linkBaiHat"];
                bh.tinhTrang = (string)rd["tinhTrang"];
                bh.maAlbum = (int)rd["maAlbum"];
                bh.maCaSi = (int)rd["maCaSi"];
                bh.maTheLoai = (int)rd["maTheLoai"];
                bh.anhBaiHat = (string)rd["anhBaiHat"];
                li.Add(bh);
            }
            con.Close();
            return li;
        }
    }
}