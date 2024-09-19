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
    public partial class FrmEspecialidad : System.Web.UI.Page
    {
        ClasEntEspecialidad objent = new ClasEntEspecialidad();
        ClasNegocioEspecialidad objneg = new ClasNegocioEspecialidad();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void mantenimiento_RegEspecialidad(String Accion)
        {

            objent.idEspecialidad = int.Parse(txtEpccodigo.Text);
            objent.espNombre = Convert.ToString(txtEspNombre.Text);
            objent.espNota = Convert.ToString(txtEspNota.Text);
                          
        }
        
        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {

            if (txtEpccodigo.Text == "" || txtEspNombre.Text == "" || txtEspNota.Text == "" )
            {
                lblMensaje.Text = "Ningun campo puede quedar vacío!";
            }
            else
            {
                try
                {
                    mantenimiento_RegEspecialidad("1");
                    lblMensaje.Text = "Los datos del " + txtEspNombre.Text + " estan incertados";
                }
                catch (Exception)
                {

                    throw;
                }
            }



        }

        protected void BtnEditar_Click(object sender, EventArgs e)
        {

            if (txtEpccodigo.Text == "" )
            {
                lblMensaje.Text = "Ningun campo puede quedar vacío!";
            }
            else
            {
                try
                {
                    mantenimiento_RegEspecialidad("2");
                    lblMensaje.Text = "Los datos del " + txtEspNombre.Text + " estan editados";
                }
                catch (Exception)
                {

                    throw;
                }
            }

        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {

            if (txtEpccodigo.Text == "")
            {
                lblMensaje.Text = "Ningun campo puede quedar vacío!";
            }
            else
            {
                try
                {
                    mantenimiento_RegEspecialidad("3");
                    lblMensaje.Text = "Los datos del " + txtEspNombre.Text + " estan Eliminados";
                }
                catch (Exception)
                {

                    throw;
                }
            }

        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {

        }
    }
}