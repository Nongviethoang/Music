using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebNgheNhac.Admin;
namespace MusicWeb.Entity
{
    public class ChuDe
    {
        public ChuDe(int maChuDe, string tenChuDe)
        {
            this.maChuDe = maChuDe;
            this.tenChuDe = tenChuDe;
        }
        public ChuDe()
        {

        }
        public int maChuDe { set; get; }
        public string tenChuDe { get; set; }

    }
}