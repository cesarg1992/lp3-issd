using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Propiedades
{
    public partial class propiedades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAlta_Click(object sender, EventArgs e)
        {
            PropiedadesDataSource.InsertParameters["Altura"].DefaultValue =
                txtAltura.Text;
            PropiedadesDataSource.InsertParameters["Calle"].DefaultValue =
                txtCalle.Text;
            PropiedadesDataSource.InsertParameters["IdPropietario"].DefaultValue =
                ddlPropietario.SelectedValue;
            PropiedadesDataSource.Insert();
            txtAltura.Text = string.Empty;
            txtCalle.Text = string.Empty;
            Response.Redirect("Default.aspx");
        }

        protected void PropietariosDataSource_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}