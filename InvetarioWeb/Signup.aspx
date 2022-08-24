<%@ Page Title="" Language="C#" MasterPageFile="~/InventarioMaster.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="InvetarioWeb.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    Registro de Usuarios</p>
<asp:TextBox ID="TCodigoUsuario" runat="server"></asp:TextBox>
<br />
<asp:TextBox ID="TNombreUsuario" runat="server"></asp:TextBox>
<br />
<asp:TextBox ID="TClaveUsuario" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
<br />
    Tipo de Usuario:
<asp:DropDownList ID="DDTipoUsuario" runat="server" DataSourceID="SqlInventarioDB" DataTextField="Descripcion_TipoUsuario" DataValueField="Descripcion_TipoUsuario">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlInventarioDB" runat="server" ConnectionString="<%$ ConnectionStrings:INVENTARIODBConnectionString %>" SelectCommand="SELECT [Descripcion_TipoUsuario] FROM [Tipo_Usuario]"></asp:SqlDataSource>
    <br />
    <asp:Button ID="BRegistrarse" runat="server" Text="Registrarse" />
    <br />
    <br />
       <p> <a href="Login.aspx">¿Ya tengo cuenta? Iniciar Sesión </a></p><br />
<br />
</asp:Content>
