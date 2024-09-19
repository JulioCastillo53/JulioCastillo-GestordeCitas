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
    public class ClasDatosPaciente
    {

        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);
        public String Mantenimineto_Pasiente(ClasEntPasiente obje)
        {
            String Accion = "";
            SqlCommand cmd = new SqlCommand("sp_Mantenimineto_Pasiente", cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@idPasiente", obje.idPasiente);
            cmd.Parameters.AddWithValue("@PacDocumento", obje.PacDocumento);
            cmd.Parameters.AddWithValue("@PacNombres", obje.PacNombres);
            cmd.Parameters.AddWithValue("@PacApellido", obje.PacApellido);
            cmd.Parameters.AddWithValue("@PacDireccion", obje.PacDireccion);
            cmd.Parameters.AddWithValue("@PacTelefono", obje.PacTelefono);
            cmd.Parameters.AddWithValue("@pacNota", obje.pacNota);
            cmd.Parameters.Add("@Accion", SqlDbType.VarChar, 50).Value = obje.Accion;
            cmd.Parameters["@Accion"].Direction = ParameterDirection.InputOutput;
            if (cn.State == ConnectionState.Open) cn.Close();
            cn.Open();
            cmd.ExecuteNonQuery();
            Accion = cmd.Parameters["@Accion"].Value.ToString();
            cn.Close();
            return Accion;

        }


    }
}
