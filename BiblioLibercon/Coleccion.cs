using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Libercon.Datos;
namespace BiblioLibercon
{
    public class Coleccion
    {
        public List<Usuario> GetUsuarios()
        {
            List<Usuario> salida = new List<Usuario>();
            foreach(Libercon.Datos.Usuario usu in Conexion.LiberEntities.Usuario)
            {
                salida.Add(new Usuario()
                {
                    IdUsuario = usu.UsuarioID,
                    Rut = usu.Rut + usu.Dv,
                    Nombre = usu.Nombre,
                    Correo = usu.Correo,
                    Telefono = usu.Telefono
                    

                });
            }

            return salida;
        }

        public List<Libro> GetLibro()
        {
            List<Libro> salida = new List<Libro>();
            foreach (Libercon.Datos.Libro lib in Conexion.LiberEntities.Libro)
            {
                salida.Add(new Libro()
                {
                    IdLibro = lib.IdLibro,
                    Autor = lib.Autor,
                    Titulo = lib.Titulo,
                    Editorial = lib.Editorial,
                    Categoria = lib.Categoria


                });
            }

            return salida;
        }

        public List<Prestamo> GetPrestamo()
        {
            List<Prestamo> salida = new List<Prestamo>();
            foreach (Libercon.Datos.Prestamo pres in Conexion.LiberEntities.Prestamo)
            {
                salida.Add(new Prestamo()
                {
                    IdPrestamo = pres.IdPrestamo,
                    Fecha = pres.Fecha,
                    Titulo = pres.Titulo,
                    IdLibro = pres.IdLibro,
                    IdUsuario = pres.UsuarioId
                    
                });
            }

            return salida;
        }
    }
}
