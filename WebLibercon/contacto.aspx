<%@ Page Title="" Language="C#" MasterPageFile="~/LiberconMaster.Master" AutoEventWireup="true" CodeBehind="contacto.aspx.cs" Inherits="WebLibercon.contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="formulario">
        <asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
        <asp:Label ID="lblCorreo" runat="server" Text="Correo:"></asp:Label>&nbsp&nbsp<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
        <asp:Label ID="lblTelefono" runat="server" Text="Teléfono"></asp:Label>&nbsp<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
        <asp:Label ID="lblMotivo" runat="server" Text="Motivo:"></asp:Label><asp:TextBox ID="TextBox4" runat="server" Height="111px" Width="213px"></asp:TextBox><br />
        <asp:Button ID="btnEnviar" runat="server" Text="Enviar" />
    </div>
</asp:Content>
