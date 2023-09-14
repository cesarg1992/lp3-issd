<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Departamentos.aspx.cs" Inherits="GestionDepartamentos.Departamentos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Dirección:<br />
            Planta:<br />
            Número:<br />
            <br />
            <asp:Label ID="lbl_Datos" runat="server" Text="Datos del propietario:"></asp:Label>
            <br />
            <asp:Label ID="lbl_Nom_Prop" runat="server" Text="Nombre"></asp:Label>
            <br />
            <asp:Label ID="lbl_Apll_Prop" runat="server" Text="Apellido"></asp:Label>
            <br />
            <br />
            Datos del inquilino:<br />
            <asp:Label ID="lbl_Nom_Inq" runat="server" Text="Nombre"></asp:Label>
            <br />
            <asp:Label ID="lbl_Apll_Inq" runat="server" Text="Apellido"></asp:Label>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
