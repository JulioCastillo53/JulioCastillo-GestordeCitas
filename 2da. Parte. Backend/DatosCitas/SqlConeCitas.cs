using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.SqlClient;
using System.Configuration;
using System.Runtime.Remoting.Messaging;
using System.Data;
using EntidadCitas;

namespace DatosCitas
{
        
    public class SqlConeCitas   
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ToString());

        public String Mantenimineto_Citas(ClasEntCitas obje)
        {
            String Accion = "";
            SqlCommand cmd = new SqlCommand("sp_Mantenimineto_Cita", cn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@IdCita", obje.IdCita);
            cmd.Parameters.AddWithValue("@CiDetalle", obje.CiDetalle);
            cmd.Parameters.AddWithValue("@CiFecha", obje.ciHora);
            cmd.Parameters.AddWithValue("@ciHora", obje.ciHora);
            cmd.Parameters.AddWithValue("@IdPasiente", obje.IdPasiente);
            cmd.Parameters.AddWithValue("@IdDoctor", obje.IdDoctor);
            

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
