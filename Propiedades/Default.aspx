<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Propiedades._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="PropietariosDataSource" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="480px">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
        <asp:BoundField DataField="Propiedades" HeaderText="Propiedades" ReadOnly="True" SortExpression="Propiedades" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="PropietariosDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:PropietariosDbConnectionString %>" DeleteCommand="DELETE FROM [Propiedades] WHERE [IdPropietario] = @Id
DELETE FROM [Propietarios] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Propietarios] ([Apellido], [Nombre]) VALUES (@Apellido, @Nombre)" OnSelecting="PropietariosDataSource_Selecting" SelectCommand="SELECT p.Id, p.Apellido, p.Nombre, COUNT(pp.IdPropietario) AS Propiedades FROM Propietarios AS p LEFT OUTER JOIN Propiedades AS pp ON p.Id = pp.IdPropietario GROUP BY p.Id, p.Apellido, p.Nombre, pp.IdPropietario" UpdateCommand="UPDATE [Propietarios] SET [Apellido] = @Apellido, [Nombre] = @Nombre WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Apellido" Type="String" />
        <asp:Parameter Name="Nombre" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Apellido" Type="String" />
        <asp:Parameter Name="Nombre" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<p>
</p>
</asp:Content>
