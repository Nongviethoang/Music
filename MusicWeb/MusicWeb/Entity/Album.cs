using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
namespace MusicWeb.Entity
{
    public class Album
    {
        public int maAlbum { get; set; }
        public string tenAlbum { get; set; }
        public string moTa { get; set; }
        public string anh { get; set; }
        public string thoiGian { get; set; }
       
        public Album()
        {

        }
        public Album(int maAlbum, string tenAlbum, string moTa, string anh, string thoiGian)
        {
            this.maAlbum = maAlbum;
            this.tenAlbum = tenAlbum;
            this.moTa = moTa;
            this.anh = anh;
            this.thoiGian = thoiGian;
           
        }
    }
}