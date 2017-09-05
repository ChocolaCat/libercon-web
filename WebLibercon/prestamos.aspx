<%@ Page Title="" Language="C#" MasterPageFile="~/LiberconMaster.Master" AutoEventWireup="true" CodeBehind="prestamos.aspx.cs" Inherits="WebLibercon.prestamos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="galeria">
        <asp:Image ID="imgPortada" runat="server" Height="184px" Width="146px" />
    </div>
    <div class="formulario">
        <asp:Label ID="lblCategoria" runat="server" Text="Categoría:"></asp:Label> <asp:DropDownList ID="ddlCategoria" runat="server"></asp:DropDownList>
        <br>
        <asp:Label ID="lblLibro" runat="server" Text="Libro:"></asp:Label> <asp:DropDownList ID="ddlLibro" runat="server"></asp:DropDownList>
        <br>
        <asp:Label ID="lblPeriodo" runat="server" Text="Periodo de Prestamo: "></asp:Label>
        <br>
        <asp:Button ID="btnPedir" runat="server" Text="Pedir" />
    </div>
</asp:Content>
