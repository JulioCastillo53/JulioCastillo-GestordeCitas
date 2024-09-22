<%@ Page Title="" Language="C#" MasterPageFile="~/MpControlCitas.Master" AutoEventWireup="true" CodeBehind="FrmPaciente.aspx.cs" Inherits="VistaCitas.FrmPaciente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <div class="container box">
     <h1 class="title">Registro de Paciente</h1>       

        <div class="field">
                
             <div class="control">
            
             </div>       
        </div>
     <div class="field is-grouped">
         
          <asp:Label ID="lblPacCodigo" class="label" runat="server" Text="Codigo: "></asp:Label>
          <div class="control">
            
             <asp:TextBox runat="server" ID="txtPacCodigo" CssClass="input" type="text" placeholder="ej.00210"></asp:TextBox>
         </div>
           <asp:Label ID="lblPacBuscar" class="label" runat="server" Text=" Buscar:  "></asp:Label>
           <div class="control">

                <asp:TextBox runat="server" ID="txtEpcBuscar" CssClass="input" type="text" placeholder="ej.05210"></asp:TextBox>
         </div>
            
      </div>

     <div class="field">
         <label class="label">Documento:</label>
         <div class="control">
             <asp:TextBox runat="server" ID="txtPacDocumento" CssClass="input" type="text" placeholder="ej. 001-225488-5"></asp:TextBox>
         </div>
       
     </div>

       <div class="field">
         <label class="label">Nombre:</label>
         <div class="control">
             <asp:TextBox runat="server" ID="txtPacNombre" CssClass="input" type="text" placeholder="ej. Cardiologia"></asp:TextBox>
         </div>
       
     </div>
     <div class="field">
         <label class="label">Apellido:</label>
         <div class="control">
             <asp:TextBox runat="server" ID="txtPacApellido" CssClass="input" type="text" placeholder="ej. Perez lopez"></asp:TextBox>
         </div>
       
     </div>
     <div class="field">
         <label class="label">Direccion:</label>
         <div class="control">
             <asp:TextBox runat="server" ID="txtPacDireccion" CssClass="input" type="text" placeholder="ej. c/ Duarte esq 10"></asp:TextBox>
         </div>         
     </div>

     <div class="field">
         <label class="label">Telefono:</label>
         <div class="control">
             <asp:TextBox runat="server" ID="txtPacTelefono" CssClass="input" type="text" placeholder="ej. 1829-587-0001"></asp:TextBox>
         </div>
       
     </div>


     <div class="field">
         <label class="label">Nota:</label>
         <div class="control">
             <asp:TextBox runat="server" ID="txtPacNota" CssClass="input" type="text" placeholder="ej. nota detalle..."></asp:TextBox>
         </div>
       
     </div>

    

     <div class="field">
        <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
     </div>

        <div class="field is-grouped">

                   <div class="control">
                       <asp:Button runat="server" ID="BtnRegistrar" CssClass="button is-link"  Text="Registrar"  />
                   </div>
                  <div class="control">
                       <asp:Button runat="server" ID="BtnEditar" CssClass="button is-link"  Text="Editar"  />
                  </div>
                 <div class="control">
                        <asp:Button runat="server" ID="BtnEliminar" CssClass="button is-link"  Text="Eliminar"  />
                 </div>
                 <div class="control">
                        <asp:Button runat="server" ID="BtnBuscar" CssClass="button is-link"  Text="Buscar"  />
                 </div>
      </div>

 </div>




</asp:Content>
