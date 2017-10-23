using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BiblioLibercon
{
    public class Prestamo
    {
        private int _idPrestamo;
        private DateTime _fecha;
        private string _titulo;
        private int _idLibro;

        public int IdUsuario { get; set; }

        public int IdLibro
        {
            get { return _idLibro; }
            set { _idLibro = value; }
        }


        public string Titulo
        {
            get { return _titulo; }
            set { _titulo = value; }
        }


        public DateTime Fecha
        {
            get { return _fecha; }
            set { _fecha = value; }
        }


        public int IdPrestamo
        {
            get { return _idPrestamo; }
            set { _idPrestamo = value; }
        }

        public Prestamo()
        {
            this.Init();
        }

        void Init()
        {
            IdPrestamo = 0;
            Titulo = string.Empty;
            _idLibro = 0;
            IdUsuario = 0;
            Fecha = DateTime.Now;
        }

        public Prestamo(int _idPrestamo, DateTime _fecha, string _titulo, int _idLibro, int idUsuario)
        {
            this._idPrestamo = _idPrestamo;
            this._fecha = _fecha;
            this._titulo = _titulo;
            this._idLibro = _idLibro;
            IdUsuario = idUsuario;
        }

        public bool Create()
        {
            try
            {
                Libercon.Datos.Prestamo pres = new Libercon.Datos.Prestamo()
                {
                    IdPrestamo = IdPrestamo,
                    UsuarioId = IdUsuario,
                    IdLibro = IdLibro,
                    Fecha = Fecha,
                    Titulo = Titulo,

                };
                Conexion.LiberEntities.Prestamo.Add(pres);
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
                Libercon.Datos.Prestamo pres = Conexion.LiberEntities.Prestamo.First(n => n.IdPrestamo == IdPrestamo);
                IdPrestamo = pres.IdPrestamo;
                Fecha = pres.Fecha;
                IdLibro = pres.IdLibro;
                Titulo = pres.Titulo;
                IdUsuario = pres.UsuarioId;
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
                Libercon.Datos.Prestamo pres = Conexion.LiberEntities.Prestamo.First(n => n.IdPrestamo == IdPrestamo);
                pres.IdPrestamo = IdPrestamo;
                pres.Fecha = Fecha;
                pres.IdLibro = IdLibro;
                pres.Titulo = Titulo;
                pres.UsuarioId = IdUsuario;
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
                Libercon.Datos.Prestamo pres = Conexion.LiberEntities.Prestamo.First(a => a.IdPrestamo == IdPrestamo);
                Conexion.LiberEntities.Prestamo.Remove(pres);
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

