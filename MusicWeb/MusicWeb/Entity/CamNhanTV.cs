using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MusicWeb.Entity
{
    public class CamNhanTV
    {
        public int maCamNhan { get; set; }
        public string noiDung { get; set; }
        public string thoiGian { get; set; }
        public int maBaiHat { get; set; }
        public string tenThanhVien { get; set; }
        public CamNhanTV()
        {

        }

        public CamNhanTV(int maCamNhan, string noiDung, string thoiGian, int maBaiHat, string tenThanhVien)
        {
            this.maCamNhan = maCamNhan;
            this.noiDung = noiDung;
            this.thoiGian = thoiGian;
            this.maBaiHat = maBaiHat;
            this.tenThanhVien = tenThanhVien;
        }
    }
}