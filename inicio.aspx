<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="Cobranza.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro de Cobranza</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Registro de Cobranza</h1>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Cargadatos.aspx">"Registrar Cobro"</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Verdatos.aspx">"Ver cobros realizados"</asp:HyperLink>
        </div>
    </form>
</body>
</html>
