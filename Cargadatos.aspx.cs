using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cobranza
{
    public partial class Cargadatos : System.Web.UI.Page
    {
        protected void TextImporte_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BtnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicio.aspx");
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            StreamWriter streamWriter = new StreamWriter($"{Server.MapPath(".")}/Pagos.txt", true);
            streamWriter.WriteLine(TextNombre.Text);
            streamWriter.WriteLine(TextApellido.Text);
            streamWriter.WriteLine(TextDni.Text);
            streamWriter.WriteLine(TextFechapago.Text);
            streamWriter.WriteLine(DropDownList1.Text);
            streamWriter.WriteLine(TextImporte.Text);
            streamWriter.WriteLine(TextComentario.Text);
            streamWriter.Close();
            Lblresultado.Text = $"Agregado, ruta de archivo.txt {Server.MapPath(".")} .";

        }
    }
}