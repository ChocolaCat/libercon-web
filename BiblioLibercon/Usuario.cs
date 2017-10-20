using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BiblioLibercon
{
    public class Usuario
    {
        private int _rut;
        private string _dv;
        private string _nombre;
        private string _correo;
        private int _telefono;

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

        public int Telefono
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


        private void Init()
        {
            _rut = 0;
            _nombre = "";
            _correo = "@";
            _telefono = 0;
        }   
    }
}
