<%@ Page Title="" Language="C#" MasterPageFile="~/MpControlCitas.Master" AutoEventWireup="true" CodeBehind="FrmCita.aspx.cs" Inherits="VistaCitas.FrmCita" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container box">
        <h1 class="title">Registro de Citas</h1>       
     
           <div class="field">       
            
                <div class="control">
               
                </div>
          
           </div>


        <div class="field is-grouped">
            
             <asp:Label ID="lblCitCodigo" class="label" runat="server" Text="Codigo: "></asp:Label>
             <div class="control">
               
                <asp:TextBox runat="server" ID="txtCitCodigo" CssClass="input" type="text" placeholder="ej.00210"></asp:TextBox>
            </div>
              <asp:Label ID="lblCitBuscar" class="label" runat="server" Text=" Buscar:  "></asp:Label>
              <div class="control">

                   <asp:TextBox runat="server" ID="txtCitBuscar" CssClass="input" type="text" placeholder="ej.05210"></asp:TextBox>
            </div>
               
         </div>

        <div class="field">
            <label class="label">Cita Detalle:</label>
            <div class="control">
                <asp:TextBox runat="server" ID="txtPCitDetalle" CssClass="input" type="text" placeholder="ej. Descripcion "></asp:TextBox>
            </div>
          
        </div>

          <div class="field">
            <label class="label">Fecha:</label>
            <div class="control">
                <asp:TextBox runat="server" ID="txtCiFecha" CssClass="input" type="text" placeholder="ej. 15/2/2024 "></asp:TextBox>
            </div>
          
        </div>
        <div class="field">
            <label class="label">Hora:</label>
            <div class="control">
                <asp:TextBox runat="server" ID="txtCiHora" CssClass="input" type="text" placeholder=" 10:00 "></asp:TextBox>
            </div>
          
        </div>
        <div class="field">
            <label class="label">Id Paciente:</label>
            <div class="control">
                <asp:TextBox runat="server" ID="txtIdPaciente" CssClass="input" type="text" placeholder="ej. 03254"></asp:TextBox>
            </div>         
        </div>

        <div class="field">
            <label class="label">Id Doctor:</label>
            <div class="control">
                <asp:TextBox runat="server" ID="txtidDoctor" CssClass="input" type="text" placeholder="ej. 0021"></asp:TextBox>
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
                           <asp:Button runat="server" ID="BtnEliminar" CssClass="button is-link"  Text="Eliminar"  />
                    </div>
                    <div class="control">
                           <asp:Button runat="server" ID="BtnBuscar" CssClass="button is-link"  Text="Buscar"  />
                    </div>
         </div>

    </div>



</asp:Content>
