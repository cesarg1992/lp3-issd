<%@ Page Title="Departamentos" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="Departamentos.aspx.cs" Inherits="GestionDepartamentos.Departamentos" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
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
</asp:Content>

