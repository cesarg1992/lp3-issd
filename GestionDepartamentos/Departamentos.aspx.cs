using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestionDepartamentos
{
    public partial class Departamentos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var rutaArchivo = $"{Server.MapPath(".")}/datos.txt";
            if (File.Exists(rutaArchivo))
            {
                using (StreamReader reader = new StreamReader(rutaArchivo))
                {
                    string line;
                    while ((line = reader.ReadLine()) != null)
                    {
                        if (line.StartsWith("Dirección:"))
                            Lbl_Info.Text += line + " <br>";

                        if (line.StartsWith("Planta:"))
                            Lbl_Info.Text += line + " <br>";

                        if (line.StartsWith("Número:"))
                            Lbl_Info.Text += line + "<br>";

                        if (line.StartsWith("Nombre prop.:"))
                            Lbl_Info.Text += line + " <br>";

                        if (line.StartsWith("Apellido prop.:"))
                            Lbl_Info.Text += line + " <br>";

                        if (line.StartsWith("Nombre inq.:"))
                            Lbl_Info.Text += line + " <br>";

                        if (line.StartsWith("Apellido inq.:"))
                        {
                            Lbl_Info.Text += line + " <br>";
                            Lbl_Info.Text += new String('-', 10) + " <br>";
                        }   
                    }
                }
            }
            else
            {
                Lbl_Info.Text = "No hay datos de departamentos registrados.";
            }
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Formulario_de_Gestión.aspx");
        }
    }
}