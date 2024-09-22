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
using NegociosCitas;
using EntidadCitas;

namespace VistaCitas
{
    public partial class FrmMedico : System.Web.UI.Page
    {

        ClasEntMedico objent = new ClasEntMedico();
        ClasNegocioMedico objneg = new ClasNegocioMedico();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void mantenimientoMedico(String Accion)
        {

            objent.idMedico = int.Parse(txtcodigo.Text);
            objent.MedDocmento = Convert.ToString(TxtDocumento.Text);
            objent.MedNombre = Convert.ToString(txtNombre.Text);
            
            objent.MedApellido = Convert.ToString(txtApellido.Text);
            objent.MedDireccion = Convert.ToString(txtDireccion.Text);
            objent.MedTelefono = Convert.ToString(TxtTelefono.Text);

            objent.idEspecialidad =  (TxtIdEspecialidad.Text);

           }

        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {


            if (txtcodigo.Text == "" || TxtDocumento.Text == "" || txtNombre.Text == "" || txtApellido.Text == "" || txtDireccion.Text == "" || TxtTelefono.Text == "" )
            {
                lblMensaje.Text = "Ningun campo puede quedar vacío!";
            }
            else
            {
                try
                {
                    mantenimientoMedico("1");
                    lblMensaje.Text = "Los datos del " + txtNombre.Text + " estan incertados";
                }
                catch (Exception)
                {

                    throw;
                }
            }



        }

        protected void BtnEditar_Click(object sender, EventArgs e)
        {


            if (txtcodigo.Text == "" )
            {
                lblMensaje.Text = "Ningun campo puede quedar vacío! y colocar el codigo";
            }
            else
            {
                try
                {
                    mantenimientoMedico("2");
                    lblMensaje.Text = "Los datos del " + txtNombre.Text + " estan Actualizados";
                }
                catch (Exception)
                {

                    throw;
                }
            }

        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            if (txtcodigo.Text == "")
            {
                lblMensaje.Text = "Ningun campo puede quedar vacío!";
            }
            else
            {
                try
                {
                    mantenimientoMedico("3");
                    lblMensaje.Text = "Los datos del " + txtNombre.Text + " estan Eliminados";
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