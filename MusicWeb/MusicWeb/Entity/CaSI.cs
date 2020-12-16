using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MusicWeb.Entity
{
    public class CaSi
    {
        public CaSi(int maCaSi, string tenCaSi, string anh, string thongTin)
        {
            this.maCaSi = maCaSi;
            this.tenCaSi = tenCaSi;
            this.anh = anh;
            this.thongTin = thongTin;
        }
        public CaSi()
        {

        }
        public int maCaSi { get; set; }
        public string tenCaSi { get; set; }
        public string anh { get; set; }
        public string thongTin { get; set; }

    }
}