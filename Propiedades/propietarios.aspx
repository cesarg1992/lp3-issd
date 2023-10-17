<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="propietarios.aspx.cs" Inherits="Propiedades.propietarios" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
            <asp:Label ID="Label1" runat="server" Text="Apellido"></asp:Label>
            <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
        </div>
        &nbsp;<asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        <asp:SqlDataSource ID="propietariosDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:PropietariosDbConnectionString %>" SelectCommand="SELECT * FROM [Propietarios]" InsertCommand="INSERT INTO Propietarios(Apellido, Nombre) VALUES (@apellido, @nombre)">
            <InsertParameters>
                <asp:Parameter Name="apellido" />
                <asp:Parameter Name="nombre" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:Button ID="btnAgregarPropietario" runat="server" OnClick="btnAgregarPropietario_Click" Text="Agregar" />
</asp:Content>
