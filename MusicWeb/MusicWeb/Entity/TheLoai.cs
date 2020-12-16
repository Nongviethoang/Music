using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MusicWeb.Entity
{
    public class TheLoai
    {
        public TheLoai(int maTheLoai, string tenTheLoai, int maChuDe)
        {
            this.maTheLoai = maTheLoai;
            this.tenTheLoai = tenTheLoai;
            this.maChuDe = maChuDe;
        }
        public TheLoai()
        {

        }
        public int maTheLoai { get; set; }
        public string tenTheLoai { get; set; }
        public int maChuDe { get; set; }

    }
}