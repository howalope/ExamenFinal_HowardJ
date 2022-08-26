using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace InvetarioWeb.Clases
{
    public class DBConnection
    {

        public static SqlConnection obtenerConexion()
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["INVENTARIODBConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            return conexion;
        }
    }
}