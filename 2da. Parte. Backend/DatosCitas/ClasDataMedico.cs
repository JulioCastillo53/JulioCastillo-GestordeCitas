using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using EntidadCitas;

namespace DatosCitas
{
        
    public class ClasDataMedico
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);
        public String Mantenimineto_Medico(ClasEntMedico obje)
        {
            String Accion = "";
            SqlCommand cmd = new SqlCommand("sp_Mantenimineto_Medico", cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@idMedico", obje.idMedico);
            cmd.Parameters.AddWithValue("@MedDocmento", obje.MedDocmento);
            cmd.Parameters.AddWithValue("@MedNombre", obje.MedNombre);
            cmd.Parameters.AddWithValue("@MedApellido", obje.MedApellido);
            cmd.Parameters.AddWithValue("@MedDireccion", obje.MedDireccion);
            cmd.Parameters.AddWithValue("@MedTelefono", obje.MedTelefono);
            cmd.Parameters.AddWithValue("@idEspecialidad", obje.idEspecialidad);

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
