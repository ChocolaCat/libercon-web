using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BiblioLibercon
{
    public class Libro
    {
        private string _autor;
        private string _titulo;
        private string _editorial;
        private string _categoria;

        public string Categoria
        {
            get { return _categoria; }
            set { _categoria = value; }
        }

        public string Editorial
        {
            get { return _editorial; }
            set { _editorial = value; }
        }


        public string Titulo
        {
            get { return _titulo; }
            set { _titulo = value; }
        }


        public string Autor
        {
            get { return _autor; }
            set { _autor = value; }
        }

        public Libro()
        {
            this.Init();
        }

        private void Init()
        {
            _autor = "";
            _editorial = "";
            _titulo = "";
            _categoria = CategoriaLibro.Novela.ToString();
        }

        public Libro(string _autor, string _titulo, string _editorial, string _categoria)
        {
            this._autor = _autor;
            this._titulo = _titulo;
            this._editorial = _editorial;
            this._categoria = _categoria;
        }

        public override string ToString()
        {
            return "Título: " + Titulo + ". Autor: " + Autor + ". Editorial: " + Editorial + ". Categoría: " + Categoria + ".";
        }
    }
}
