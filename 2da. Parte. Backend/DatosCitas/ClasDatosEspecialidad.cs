using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using EntidadCitas;
namespace DatosCitas
{
    public class ClasDatosEspecialidad
    {

         SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);

        public String Mantenimineto_Especialidad(ClasEntEspecialidad obje)
        {
            String Accion = "";
            SqlCommand cmd = new SqlCommand("sp_Mantenimiento_Especialidad", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
             cmd.Parameters.AddWithValue("@idEspecialidad", obje.idEspecialidad);
            cmd.Parameters.AddWithValue("@espNombre", obje.espNombre);
            cmd.Parameters.AddWithValue("@espNota", obje.espNota);

            cmd.Parameters.Add("@Accion", SqlDbType.VarChar, 50).Value = obje.Accion;
           cmd.Parameters["@Accion"].Direction = ParameterDirection.InputOutput;
            if (conn.State == ConnectionState.Open) conn.Close();
            conn.Open();
            cmd.ExecuteNonQuery();
            Accion = cmd.Parameters["@Accion"].Value.ToString();
            conn.Close();
             return Accion;



            //conn.Close();
            //SqlCommand cmd1 = new SqlCommand("sp_RegEspecialidad", conn);
            //cmd1.CommandType = System.Data.CommandType.StoredProcedure;
            //cmd1.Parameters.Add("@espNombre", System.Data.SqlDbType.VarChar).Value = obje.espNombre;
            //cmd1.Parameters.Add("@espNota", System.Data.SqlDbType.VarChar).Value = obje.espNombre;

            //conn.Open();
            //cmd1.ExecuteNonQuery();
            //conn.Close();



        }



    }
}
