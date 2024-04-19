<%@ Page Title="" Language="C#" MasterPageFile="~/PokeMaster.Master" AutoEventWireup="true" CodeBehind="FormularioPokemon.aspx.cs" Inherits="Pokedex_app.FormularioPokemon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <asp:Panel for="txtId" CssClass="form-label" runat="server">Id: </asp:Panel>
                <asp:TextBox ID="txtId" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Panel for="txtNombre" CssClass="form-label" runat="server">Nombre: </asp:Panel>
                <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Panel for="txtNumero" CssClass="form-label" runat="server">Número: </asp:Panel>
                <asp:TextBox ID="txtNumero" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Panel for="ddlTipo" CssClass="form-label" runat="server">Tipo: </asp:Panel>
                <asp:DropDownList ID="ddlTipo" CssClass="form-select" runat="server"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Panel for="ddlDebilidad" CssClass="form-label" runat="server">Debilidad: </asp:Panel>
                <asp:DropDownList ID="ddlDebilidad" CssClass="form-select" runat="server"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" CssClass="btn btn-primary" OnClick="btnAceptar_Click" />
                <a href="PokemonLista.aspx">Cancelar</a>
            </div>
        </div>

        <div class="col-6">
            <div class="mb-3">
                <asp:Panel for="txtDescripcion" CssClass="form-label" runat="server">Descripción: </asp:Panel>
                <asp:TextBox ID="txtDescripcion" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="mb-3">
                        <asp:Label for="txtImagenUrl" runat="server" CssClass="form-label" Text="Url Imagen: "></asp:Label>
                        <asp:TextBox ID="txtImagenUrl" CssClass="form-control" AutoPostBack="true" 
                            OnTextChanged="txtImagenUrl_TextChanged" runat="server"></asp:TextBox>
                    </div>
                    <asp:Image ImageUrl="https://i0.wp.com/msrwilo.com/wp-content/uploads/2023/10/placeholder-1-1.png?ssl=1" 
                        runat="server" ID="imgPokemon" Width="60%" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>

</asp:Content>
