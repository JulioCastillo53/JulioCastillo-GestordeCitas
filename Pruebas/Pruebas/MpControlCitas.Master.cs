using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VistaCitas
{
    public partial class MpControlCitas : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnMenInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmPortal.aspx");
        }

        protected void BrnMenPacientes_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmPaciente.aspx");
        }

        protected void BtnMenMedicos_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmMedico.aspx");
        }

        protected void BrnMenEspecialidad_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmEspecialidad.aspx");
        }

        protected void BtnMenCitas_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmCita.aspx");
        }

        protected void BtnSalir_Click(object sender, EventArgs e)
        {

        }

        protected void BtnSeguridad_Click(object sender, EventArgs e)
        {

        }

        protected void BtnRegistrarse_Click(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {

        }
    }
}