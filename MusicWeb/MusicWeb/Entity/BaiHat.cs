using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MusicWeb.Entity
{
    public class BaiHat
    {
        public BaiHat(int maBaiHat, string tenBaiHat, string linkBaiHat, string tinhTrang, int maTheLoai, int maCaSi, int maAlbum, string anh)
        {
            this.maBaiHat = maBaiHat;
            this.tenBaiHat = tenBaiHat;
            this.linkBaiHat = linkBaiHat;
            this.tinhTrang = tinhTrang;
            this.maTheLoai = maTheLoai;
            this.maCaSi = maCaSi;
            this.maAlbum = maAlbum;
            this.anhBaiHat = anh;
        }
        public BaiHat()
        {

        }
        public int maBaiHat { get; set; }
        public string tenBaiHat { get; set; }
        public string linkBaiHat { get; set; }
        public string tinhTrang { set; get; }
        public int maTheLoai { get; set; }
        public int maCaSi { get; set; }
        public int maAlbum { get; set; }
        public string anhBaiHat { get; set; }
        public string loiBaiHat { get; set; }

    }
}