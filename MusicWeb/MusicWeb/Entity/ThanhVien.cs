using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MusicWeb.Entity
{
    public class ThanhVien
    {
        public ThanhVien(int maThanhVien, string tenDanhNhap, string matKhau, string hoTen, string email, string anh)
        {
            this.maThanhVien = maThanhVien;
            this.tenDanhNhap = tenDanhNhap;
            this.matKhau = matKhau;
            this.hoTen = hoTen;
            this.email = email;
           
            this.anh = anh;
        }
        public ThanhVien()
        {

        }
        public int maThanhVien { get; set; }
        public string tenDanhNhap { get; set; }
        public string matKhau { get; set; }
        public string hoTen { get; set; }
        public string email { get; set; }
        public string anh { get; set; }

    }
}