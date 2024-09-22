<%@ Page Title="" Language="C#" MasterPageFile="~/MpControlCitas.Master" AutoEventWireup="true" CodeBehind="FrmEspecialidad.aspx.cs" Inherits="VistaCitas.FrmEspecialidad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<p>
Especialidad</p>





<div class="container box">
    <h1 class="title">Registro de Especialidad</h1>       
 
       <div class="field">
       
        
            <div class="control">
           
            </div>
      
       </div>


    <div class="field is-grouped">
        
         <asp:Label ID="lblEpeCodigo" class="label" runat="server" Text="Codigo: "></asp:Label>
         <div class="control">
           
            <asp:TextBox runat="server" ID="txtEpccodigo" CssClass="input" type="text" placeholder="ej.00210"></asp:TextBox>
        </div>
          <asp:Label ID="lblEpcBuscar" class="label" runat="server" Text=" Buscar:  "></asp:Label>
          <div class="control">

               <asp:TextBox runat="server" ID="txtEpcBuscar" CssClass="input" type="text" placeholder="ej.05210"></asp:TextBox>
        </div>
           
     </div>


      <div class="field">
        <label class="label">Nombre:</label>
        <div class="control">
            <asp:TextBox runat="server" ID="txtEspNombre" CssClass="input" type="text" placeholder="ej. Cardiologia"></asp:TextBox>
        </div>
      
    </div>
    
    <div class="field">
        <label class="label">Nota:</label>
        <div class="control">
            <asp:TextBox runat="server" ID="txtEspNota" CssClass="input" type="text" placeholder="ej. nota detalle..."></asp:TextBox>
        </div>
      
    </div>

   

    <div class="field">
       <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
    </div>

       <div class="field is-grouped">

                  <div class="control">
                      <asp:Button runat="server" ID="BtnRegistrar" CssClass="button is-link"  Text="Registrar" OnClick="BtnRegistrar_Click"  />
                  </div>
                 <div class="control">
                      <asp:Button runat="server" ID="BtnEditar" CssClass="button is-link"  Text="Editar" OnClick="BtnEditar_Click"  />
                 </div>
                <div class="control">
                       <asp:Button runat="server" ID="BtnEliminar" CssClass="button is-link"  Text="Eliminar" OnClick="BtnEliminar_Click"  />
                </div>
                <div class="control">
                       <asp:Button runat="server" ID="BtnBuscar" CssClass="button is-link"  Text="Buscar" OnClick="BtnBuscar_Click" />
                </div>
     </div>

</div>




</asp:Content>
