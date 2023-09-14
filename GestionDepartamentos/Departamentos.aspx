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
            <br />
            <br />
            <asp:Label ID="Lbl_Info" runat="server"></asp:Label>
            <br />
            <br />
        </div>
        <p>
            <asp:Button ID="btnVolver" runat="server" OnClick="btnVolver_Click" Text="Volver" />
        </p>
    </form>
</body>
</html>
