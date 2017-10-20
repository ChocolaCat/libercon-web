<%@ Page Title="" Language="C#" MasterPageFile="~/LiberconMaster.Master" AutoEventWireup="true" CodeBehind="contacto.aspx.cs" Inherits="WebLibercon.contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            width: 54%;
            margin-left: 0px;
        }
        .auto-style5 {
            height: 23px;
            width: 502px;
        }
        .auto-style6 {
            width: 502px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="formulario">
        <table class="auto-style2">
            <tr>
                <td class="auto-style1">
        <asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label></td>
                <td class="auto-style5"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="(*)Campo Requerido" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
        <asp:Label ID="lblCorreo" runat="server" Text="Correo:"></asp:Label></td>
                <td class="auto-style5"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="(*)Campo Requerido" ForeColor="#FF5050"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="(*)Ingrese un e-mail válido" ForeColor="#FF5050" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
        <asp:Label ID="lblTelefono" runat="server" Text="Teléfono:"></asp:Label></td>
                <td class="auto-style6"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="(*)Campo Requerido" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="(*)Sólo números" ForeColor="#FF5050" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
        <asp:Label ID="lblMotivo" runat="server" Text="Motivo:"></asp:Label></td>
                <td class="auto-style6"><asp:TextBox ID="TextBox4" runat="server" Height="111px" Width="213px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="(*)Campo Requerido" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="(*)Máximo 200 palabras" ForeColor="#FF5050" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                </td>
                <td class="auto-style5">
                </td>
            </tr>
            <tr>
                <td>
        <asp:Button ID="btnEnviar" runat="server" Text="Enviar" />
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        &nbsp&nbsp<br />
        &nbsp<br />
        <br />
    </div>
</asp:Content>
