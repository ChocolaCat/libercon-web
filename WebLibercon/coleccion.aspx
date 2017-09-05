<%@ Page Title="" Language="C#" MasterPageFile="~/LiberconMaster.Master" AutoEventWireup="true" CodeBehind="coleccion.aspx.cs" Inherits="WebLibercon.coleccion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="DDL">
        <asp:DropDownList ID="ddlCategoria" runat="server">
        </asp:DropDownList>
    </div>
    <div class="galeria">
        <asp:Image ID="img1" runat="server" />
        <asp:Image ID="img2" runat="server" />
        <asp:Image ID="img3" runat="server" />
        <br>
        <asp:Image ID="img4" runat="server" />
        <asp:Image ID="img5" runat="server" />
        <asp:Image ID="img6" runat="server" />
        <br />
        <asp:Image ID="img7" runat="server" />
        <asp:Image ID="img8" runat="server" />
        <asp:Image ID="img9" runat="server" />
    </div>
</asp:Content>
