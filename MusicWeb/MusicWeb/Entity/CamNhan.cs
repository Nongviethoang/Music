using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MusicWeb.Entity
{
    public class CamNhan
    {
        public int maCamNhan { get; set; }
        public string noiDung { get; set; }
        public string thoiGian { get; set; }
        public int maBaiHat { get; set; }
        public int maThanhVien { get; set; }
        public CamNhan()
        {

        }

        public CamNhan(int maCamNhan, string noiDung, string thoiGian, int maBaiHat, int maThanhVien)
        {
            this.maCamNhan = maCamNhan;
            this.noiDung = noiDung;
            this.thoiGian = thoiGian;
            this.maBaiHat = maBaiHat;
            this.maThanhVien = maThanhVien;
        }
    }
}