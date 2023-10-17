using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Propiedades
{
    public partial class propietarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregarPropietario_Click(object sender, EventArgs e)
        {
            propietariosDataSource.InsertParameters["nombre"].DefaultValue =
                txtNombre.Text;
            propietariosDataSource.InsertParameters["apellido"].DefaultValue =
                txtApellido.Text;
            propietariosDataSource.Insert();
            txtNombre.Text = string.Empty;
            txtApellido.Text = string.Empty;
            Response.Redirect("Default.aspx");
        }
    }
}