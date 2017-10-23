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
        private int _idLibro;
        private string _estado;

        public string Estado
        {
            get { return _estado; }
            set { _estado = value; }
        }


        public int IdLibro
        {
            get { return _idLibro; }
            set { _idLibro = value; }
        }



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
            _idLibro = 0;
            _autor = "";
            _editorial = "";
            _titulo = "";
            _categoria = CategoriaLibro.Novela.ToString();
            _estado = "";

        }

        public Libro(string _autor, string _titulo, string _editorial, string _categoria, int _idLibro, string _estado)
        {
            this._autor = _autor;
            this._titulo = _titulo;
            this._editorial = _editorial;
            this._categoria = _categoria;
            this._idLibro = _idLibro;
            this._estado = _estado;
        }

        public override string ToString()
        {
            return "Id: " + IdLibro + ". Título: " + Titulo + ". Autor: " + Autor + ". Editorial: " + Editorial + ". Categoría: " + Categoria + ". Estado: " + Estado + ".";
        }

        public bool Create()
        {
            try
            {
                Libercon.Datos.Libro lib = new Libercon.Datos.Libro()
                {
                    IdLibro = IdLibro,
                    Autor = Autor,
                    Editorial = Editorial,
                    Categoria = Categoria,
                    Titulo = Titulo,
                    Estado = Estado

                };
                Conexion.LiberEntities.Libro.Add(lib);
                Conexion.LiberEntities.SaveChanges();
                return true;

            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Read()
        {
            try
            {
                Libercon.Datos.Libro lib = Conexion.LiberEntities.Libro.First(n => n.IdLibro == IdLibro);
                IdLibro = lib.IdLibro;
                Autor = lib.Autor;
                Categoria = lib.Categoria;
                Titulo = lib.Titulo;
                Editorial = lib.Editorial;
                Estado = lib.Estado;
                return true;

            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Update()
        {
            try
            {
                Libercon.Datos.Libro lib = Conexion.LiberEntities.Libro.First(n => n.IdLibro == IdLibro);
                lib.Autor = Autor;
                lib.Editorial = Editorial;
                lib.IdLibro = IdLibro;
                lib.Titulo = Titulo;
                lib.Categoria = Categoria;
                lib.Estado = Estado;
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Delete()
        {
            try
            {
                Libercon.Datos.Libro lib = Conexion.LiberEntities.Libro.First(a => a.IdLibro == IdLibro);
                Conexion.LiberEntities.Libro.Remove(lib);
                Conexion.LiberEntities.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
