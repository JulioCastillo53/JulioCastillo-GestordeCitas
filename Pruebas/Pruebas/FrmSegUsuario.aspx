<%@ Page Title="" Language="C#" MasterPageFile="~/MpControlCitas.Master" AutoEventWireup="true" CodeBehind="FrmSegUsuario.aspx.cs" Inherits="VistaCitas.FrmSegUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <br />
    <asp:Button runat="server" CssClass="button is-light" ID="btncreate" Visible="false" Text="Create"/>
    <asp:GridView class="table center mx-auto" runat="server" ID="datos" OnSelectedIndexChanged="datos_SelectedIndexChanged" >
        <Columns>
            <asp:TemplateField HeaderText="Opciones">
                <ItemTemplate>
                    <asp:Button runat="server" CssClass="button is-primary"  ID="btnread" Text="Registrar" OnClick="btnread_Click" />
                    <asp:Button runat="server" CssClass="button is-warning" ID="btnupdate" Text="Actualizar" OnClick="btnupdate_Click" />
                    <asp:Button runat="server" CssClass="button is-danger" ID="btndelete" Text="Eliminar" OnClick="btndelete_Click" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

</asp:Content>
