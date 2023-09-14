using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestionDepartamentos
{
    public partial class Formulario_de_Gestión : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Cargar_Click(object sender, EventArgs e)
        {
            var rutaArchivo = $"{Server.MapPath(".")}/datos.txt";
            if (!File.Exists(rutaArchivo))
                File.Create(rutaArchivo);

            using (StreamWriter writer = new StreamWriter(rutaArchivo,true))
            {
                writer.WriteLine($"Dirección:{txt_Direccion.Text}");
                writer.WriteLine($"Planta:{txt_Planta.Text}");
                writer.WriteLine($"Número:{txt_Nro.Text}");

                writer.WriteLine($"Nombre prop.:{txt_Nomb_Prop.Text}");
                writer.WriteLine($"Apellido prop.:{txt_Apll_Prop.Text}");

                if (rbt_Si.Checked)
                {
                    writer.WriteLine($"Nombre inq.:{txt_Apll_Inq.Text}");
                    writer.WriteLine($"Apellido inq.:{txt_Nombre_Inq.Text}");
                } 
                else
                {
                    writer.WriteLine($"Nombre inq.: Sin datos");
                    writer.WriteLine($"Apellido inq.: Sin datos");
                }
            }

            Response.Redirect("Departamentos.aspx");
        }
    }
}