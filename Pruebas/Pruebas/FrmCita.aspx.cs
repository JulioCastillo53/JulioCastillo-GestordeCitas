using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

using EntidadCitas;
using NegociosCitas;


namespace VistaCitas
{
    public partial class FrmCita : System.Web.UI.Page
    {

        ClasEntCitas objent = new ClasEntCitas();
        ClasNegocioCita objneg = new ClasNegocioCita();

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        void mantenimientoCitas(String Accion)
        {

            objent.IdCita = int.Parse(txtCitCodigo.Text);
            objent.CiDetalle = Convert.ToString(txtPCitDetalle.Text);
            objent.CiFecha = Convert.ToDateTime(txtCiFecha.Text);
            objent.ciHora =  Convert.ToDateTime(txtCiHora.Text);
            objent.IdPasiente = int.Parse(txtIdPaciente.Text);
            objent.IdDoctor = int.Parse(txtidDoctor.Text);
           
        }

        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {

            if (txtCitCodigo.Text == "" || txtPCitDetalle.Text == "" || txtCiFecha.Text == "" || txtCiHora.Text == "" || txtIdPaciente.Text == "" || txtidDoctor.Text == "" )
            {
                lblMensaje.Text = "Ningun campo puede quedar vacío!";
            }
            else
            {
                try
                {
                    mantenimientoCitas("1");
                    lblMensaje.Text = "Los datos del " + txtCitCodigo.Text + "  cita estan incertados";
                }
                catch (Exception)
                {

                    throw;
                }
            }





        }

        protected void BtnEditar_Click(object sender, EventArgs e)
        {

            if (txtCitCodigo.Text == "")
            {
                lblMensaje.Text = " No debe de dejar el codigo vacio! ";
            }
            else
            {
                try
                {
                    mantenimientoCitas("2");
                    lblMensaje.Text = "Los datos del " + txtCitCodigo.Text + " estan Actualizados";
                }
                catch (Exception)
                {

                    throw;
                }
            }

            if (txtCitCodigo.Text == "")
            {
                lblMensaje.Text = "Ningun campo puede quedar vacío!";
            }
            else
            {
                try
                {
                    mantenimientoCitas("3");
                    lblMensaje.Text = "Los datos del " + txtCitCodigo.Text + " estan Eliminados";
                }
                catch (Exception)
                {

                    throw;
                }
            }






        }
    }
}