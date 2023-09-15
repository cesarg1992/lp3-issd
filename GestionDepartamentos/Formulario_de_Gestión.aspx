<%@ Page Title="Gestión" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="Formulario_de_Gestión.aspx.cs" Inherits="GestionDepartamentos.Formulario_de_Gestión" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div>
            Cargar Nuevo Departamento:<br />
            Dirección:
            <asp:TextBox ID="txt_Direccion" runat="server"></asp:TextBox>
            <br />
            Planta:&nbsp; <asp:TextBox ID="txt_Planta" runat="server"></asp:TextBox>
            <br />
            Número:
            <asp:TextBox ID="txt_Nro" runat="server"></asp:TextBox>
            <br />
            <br />
            Datos del Propietario:<br />
            Nombre:
            <asp:TextBox ID="txt_Nomb_Prop" runat="server"></asp:TextBox>
            <br />
            Apellido:
            <asp:TextBox ID="txt_Apll_Prop" runat="server"></asp:TextBox>
            <br />
            <br />
            Está alquiladEstá alquilado:<br />
            <br />
            <asp:RadioButton ID="rbt_Si" runat="server" GroupName="Alquilado" Text="Si" />
            <br />
            <asp:RadioButton ID="rbr_No" runat="server" GroupName="Alquilado" Text="No" />
            <br />
            <br />
            <asp:Label ID="lbl_datos_inquilino" runat="server" Text="Datos del inquilino"></asp:Label>
            <br />
            Nombre:
            <asp:TextBox ID="txt_Nombre_Inq" runat="server"></asp:TextBox>
            <br />
            Apellido:
            <asp:TextBox ID="txt_Apll_Inq" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btn_Cargar" runat="server" Text="Cargar" OnClick="btn_Cargar_Click" />
        </div>
</asp:Content>
