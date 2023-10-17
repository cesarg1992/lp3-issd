<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="propiedades.aspx.cs" Inherits="Propiedades.propiedades" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <asp:Label ID="Label1" runat="server" Text="Calle"></asp:Label>
        <asp:TextBox ID="txtCalle" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Altura"></asp:Label>
            <asp:TextBox ID="txtAltura" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label3" runat="server" Text="Propietario"></asp:Label>
        <asp:DropDownList ID="ddlPropietario" runat="server" DataSourceID="PropietariosDataSource" DataTextField="Nombre" DataValueField="Id" Width="182px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="PropietariosDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:PropietariosDbConnectionString %>" SelectCommand="SELECT Id, Apellido + ' ' + Nombre as Nombre  FROM [Propietarios]" OnSelecting="PropietariosDataSource_Selecting"></asp:SqlDataSource>
        <asp:Button ID="btnAlta" runat="server" OnClick="btnAlta_Click" Text="Agregar" />
        <asp:SqlDataSource ID="PropiedadesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:PropietariosDbConnectionString %>" DeleteCommand="DELETE FROM [Propiedades] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Propiedades] ([Calle], [Altura], [IdPropietario]) VALUES (@Calle, @Altura, @IdPropietario)" SelectCommand="SELECT * FROM [Propiedades]" UpdateCommand="UPDATE [Propiedades] SET [Calle] = @Calle, [Altura] = @Altura, [IdPropietario] = @IdPropietario WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Calle" Type="String" />
                <asp:Parameter Name="Altura" Type="String" />
                <asp:Parameter Name="IdPropietario" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Calle" Type="String" />
                <asp:Parameter Name="Altura" Type="String" />
                <asp:Parameter Name="IdPropietario" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
</asp:Content>
