<%@ Page Title="" Language="C#" MasterPageFile="~/MpControlCitas.Master" AutoEventWireup="true" CodeBehind="FrmUsuRegistrar.aspx.cs" Inherits="VistaCitas.FrmUsuRegistrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    
     <div class="container box">
        <h1 class="title">Registro de Usuarios</h1>

        <div class="field">
            <label class="label">Nombre</label>
            <div class="control">
                <asp:TextBox runat="server" ID="nombre" CssClass="input" type="text" placeholder="ej. JUlio Doe"></asp:TextBox>
            </div>
        </div>

        <div class="field">
            <label class="label">Edad</label>
            <div class="control">
                <asp:TextBox runat="server" ID="edad" CssClass="input" type="text" placeholder="ej. 30"></asp:TextBox>
            </div>
        </div>

        <div class="field">
            <label class="label">Usuario</label>
            <div class="control">
                <asp:TextBox runat="server" ID="usuario" CssClass="input" type="text" placeholder="ej. Julio_Doe12"></asp:TextBox>
            </div>
        </div>

        <div class="field">
            <label class="label">Clave</label>
            <div class="control">
                <asp:TextBox runat="server" ID="clave" CssClass="input" type="password" placeholder="*****"></asp:TextBox> 
             </div>
        </div>

        <div class="field">
            <label class="label">Confirma Clave</label>
            <div class="control">
                <asp:TextBox runat="server" ID="lblConfClave" CssClass="input" type="password" placeholder="*****"></asp:TextBox> 
             </div>
        </div>
        <div class="field">
        <asp:Label ID="lblMensaje" runat="server" Text="" class="label" ></asp:Label>
        </div>

        <div class="field is-grouped">
             <div class="control">
                <asp:Button runat="server" ID="Registrar" CssClass="button is-link" Text="Enviar" OnClick="Registrar_Click" />
            </div>
            <div class="control">
                 <asp:Button runat="server" ID="Cancelar" CssClass="button is-link"  Text="Cancelar" OnClick="Cancelar_Click"/>
            </div>

            <div class="control">
                <asp:Button runat="server" ID="BtnEditar" CssClass="button is-link"  Text="Editar" OnClick="BtnEditar_Click"/>
            </div>

            <div class="control">
                <asp:Button runat="server" ID="BtnEliminar" CssClass="button is-link"  Text="Eliminar" OnClick="BtnEliminar_Click"/>
            </div>
        </div>
    </div>






</asp:Content>
