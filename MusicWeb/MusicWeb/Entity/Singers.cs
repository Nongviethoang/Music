using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MusicWeb
{
    public class Singers
    {
        private int _idSinger;
        private string _nameSinger;
        private string _imgSinger;
        private string _ingfoSinger;

        public Singers(int idSinger, string nameSinger, string imgSinger, string ingfoSinger)
        {
            _idSinger = idSinger;
            _nameSinger = nameSinger;
            _imgSinger = imgSinger;
            _ingfoSinger = ingfoSinger;
        }

        public Singers()
        {
        }

        public int IdSinger { get => _idSinger; set => _idSinger = value; }
        public string NameSinger { get => _nameSinger; set => _nameSinger = value; }
        public string ImgSinger { get => _imgSinger; set => _imgSinger = value; }
        public string IngfoSinger { get => _ingfoSinger; set => _ingfoSinger = value; }

    }
}