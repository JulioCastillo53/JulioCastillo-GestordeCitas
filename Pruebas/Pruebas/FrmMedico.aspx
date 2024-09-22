<%@ Page Title="" Language="C#" MasterPageFile="~/MpControlCitas.Master" AutoEventWireup="true" CodeBehind="FrmMedico.aspx.cs" Inherits="VistaCitas.FrmMedico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <p>
 Medico</p>


 
   <div class="container box">
     <h1 class="title">Registro de Medicos</h1>       
  
        <div class="field">
        
         
             <div class="control">
            
             </div>
       
        </div>


     <div class="field is-grouped">
         
          <asp:Label ID="lblCodigo" class="label" runat="server" Text="Codigo: "></asp:Label>
          <div class="control">
            
             <asp:TextBox runat="server" ID="txtcodigo" CssClass="input" type="text" placeholder="ej.00210"></asp:TextBox>
         </div>
           <asp:Label ID="lblBuscar" class="label" runat="server" Text=" Buscar:  "></asp:Label>
           <div class="control">

                <asp:TextBox runat="server" ID="txtBuscar" CssClass="input" type="text" placeholder="ej.05210"></asp:TextBox>
         </div>
            
      </div>


       <div class="field">
         <label class="label">Documento:</label>
         <div class="control">
             <asp:TextBox runat="server" ID="TxtDocumento" CssClass="input" type="text" placeholder="ej. 001-0222584-2"></asp:TextBox>
         </div>
       
     </div>
     
     <div class="field">
         <label class="label">Nombres:</label>
         <div class="control">
             <asp:TextBox runat="server" ID="txtNombre" CssClass="input" type="text" placeholder="ej. Joe Doe"></asp:TextBox>
         </div>
       
     </div>

     <div class="field">
         <label class="label">Apellidos:</label>
         <div class="control">
             <asp:TextBox runat="server" ID="txtApellido" CssClass="input" type="text" placeholder="ej. Perez"></asp:TextBox>
         </div>
     </div>

     <div class="field">
         <label class="label">Direccion:</label>
         <div class="control">
             <asp:TextBox runat="server" ID="txtDireccion" CssClass="input" type="text" placeholder="ej. C/ Duarte no 5 esq 4"></asp:TextBox>
         </div>
     </div>

             
      <div class="field">
         <label class="label">Telefono:</label>
         <div class="control">
             <asp:TextBox runat="server" ID="TxtTelefono" CssClass="input" type="text" placeholder="ej. 8289658774"></asp:TextBox>
         </div>
     </div>
     

      <div class="field">
         <label class="label">IdEspecialidad:</label>
         <div class="control">
             <asp:TextBox runat="server" ID="TxtIdEspecialidad" CssClass="input" type="text" placeholder=" 12 o un90"></asp:TextBox>
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
                        <asp:Button runat="server" ID="BtnBuscar" CssClass="button is-link"  Text="Buscar" OnClick="BtnBuscar_Click"  />
                 </div>
      </div>

 </div>







</asp:Content>
