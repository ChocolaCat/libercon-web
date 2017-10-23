using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Libercon.Datos;

namespace BiblioLibercon
{
    internal class Conexion
    {
        private static Liber_ConEntities _liberEntities;

        public static Liber_ConEntities LiberEntities
        {
            get { if (_liberEntities == null)
                    _liberEntities = new Liber_ConEntities();
                return _liberEntities; }
            set { _liberEntities = value; }
        }



    }
}
