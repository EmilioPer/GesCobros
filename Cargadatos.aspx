<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cargadatos.aspx.cs" Inherits="Cobranza.Cargadatos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Registro de Datos</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Registre datos del cobro</h1>

            <asp:Label ID="Lblnombre" runat="server" Text="Nombre :"></asp:Label>
            <asp:TextBox ID="TextNombre" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Lblapellido" runat="server" Text="Apellido :"></asp:Label>
            <asp:TextBox ID="TextApellido" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="LblDni" runat="server" Text="DNI :"></asp:Label>
            <asp:TextBox ID="TextDni" runat="server" onkeypress="return soloNumeros(event);"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Lblfecha" runat="server" Text="Fecha de Pago :"></asp:Label>
            <asp:TextBox ID="TextFechapago" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Lblformapago" runat="server" Text="Metodo de pago"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Efectivo</asp:ListItem>
                <asp:ListItem>Tarjeta Credito</asp:ListItem>
                <asp:ListItem>Tarjeta Debito</asp:ListItem>
                <asp:ListItem>MercadoPago</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Lblimporte" runat="server" Text="Importe :"></asp:Label>
            <asp:TextBox ID="TextImporte" runat="server" onkeypress="return soloNumeros(event);"></asp:TextBox>
            <script type="text/javascript">
                function soloNumeros(e) {
                    var key = e.which || e.keyCode;
                    if (key < 48 || key > 57) {
                        e.preventDefault();
                    }
                }
            </script>
            <br />
            <br />
            <asp:Label ID="LblComentario" runat="server" Text="Comentario :">
            </asp:Label><asp:TextBox ID="TextComentario" runat="server" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" OnClick="BtnGuardar_Click" />
            <asp:Button ID="BtnVolver" runat="server" Text="Volver" OnClick="BtnVolver_Click" />
            <asp:Label ID="Lblresultado" runat="server" Text="   "></asp:Label>
        </div>


    </form>
</body>
</html>
