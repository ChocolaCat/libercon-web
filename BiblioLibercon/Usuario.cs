using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Libercon.Datos;

namespace BiblioLibercon
{
    public class Usuario
    {
        private int _rut;
        private string _dv;
        private string _nombre;
        private string _correo;
        private string _telefono;
        private int _idUsuario;

        public int IdUsuario
        {
            get { return _idUsuario; }
            set { _idUsuario = value; }
        }


        public string Rut {
            get { return string.Format("{0}-{1}", _rut.ToString(), _dv); }
            set {
                if (string.IsNullOrWhiteSpace(value))
                {
                    throw new ArgumentException("Rut no puede ir vacío");
                }
                value = value.Replace(" ", "").Replace(",", "").Replace(".", "").Replace("-", "").ToLower();
                _dv = value[value.Length - 1].ToString();
                value = value.Remove(value.Length - 1);
                int dvn;
                //Verificar
                if (!int.TryParse(value, out _rut) || (!int.TryParse(_dv, out dvn) && _dv != "k"))
                {
                    throw new ArgumentException("Rut no es válido");
                }
            }
        }

        public string Telefono
        {
            get { return _telefono; }
            set { _telefono = value; }
        }


        public string Correo
        {
            get { return _correo; }
            set { _correo = value; }
        }


        public string Nombre
        {
            get { return _nombre; }
            set { _nombre = value; }
        }

        public Usuario()
        {
            this.Init();
        }

        public Usuario(int _rut, string _dv, string _nombre, string _correo, string _telefono, int _idUsuario)
        {
            this._rut = _rut;
            this._dv = _dv;
            this._nombre = _nombre;
            this._correo = _correo;
            this._telefono = _telefono;
            this._idUsuario = _idUsuario;
        }

        private void Init()
        {
            _idUsuario = 0;
            _rut = 0;
            _nombre = "";
            _correo = "@";
            _telefono = "0";
        }   

        public bool Create()
        {
            try
            {
                Libercon.Datos.Usuario usu = new Libercon.Datos.Usuario()
                {
                    UsuarioID = IdUsuario,
                    Rut = _rut.ToString(),
                    Dv = _dv,
                    Nombre = _nombre,
                    Correo = _correo,
                    Telefono = _telefono

                };
                Conexion.LiberEntities.Usuario.Add(usu);
                Conexion.LiberEntities.SaveChanges();
                return true;

            }catch(Exception)
            {
                return false;
            }
        }

        public bool Read()
        {
            try
            {
                Libercon.Datos.Usuario usu = Conexion.LiberEntities.Usuario.First( k=> k.UsuarioID == IdUsuario);
                IdUsuario = usu.UsuarioID;
                Rut = usu.Rut;
                Nombre = usu.Nombre;
                _dv = usu.Dv;
                Correo = usu.Correo;
                Telefono = Telefono;
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
                Libercon.Datos.Usuario usu = Conexion.LiberEntities.Usuario.First(n => n.UsuarioID == IdUsuario);
                usu.UsuarioID = IdUsuario;
                usu.Rut = _rut.ToString();
                usu.Dv = _dv;
                usu.Nombre = Nombre;
                usu.Correo = Correo;
                usu.Telefono = Telefono.ToString();
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
                Libercon.Datos.Usuario usu = Conexion.LiberEntities.Usuario.First(a => a.UsuarioID == IdUsuario);
                Conexion.LiberEntities.Usuario.Remove(usu);
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
