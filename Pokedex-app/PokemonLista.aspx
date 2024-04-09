<%@ Page Title="" Language="C#" MasterPageFile="~/PokeMaster.Master" AutoEventWireup="true" CodeBehind="PokemonLista.aspx.cs" Inherits="Pokedex_app.PokemonLista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>
        Lista de Pokemones!
    </h1>

    <asp:GridView ID="dgvPokemons" runat="server" cssClass="table table-bordered table-warning" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField HeaderText="Número" DataField="Numero" />
            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
            <asp:BoundField HeaderText="Tipo" DataField="Tipo.Descripcion" />
            <asp:BoundField HeaderText="Debilidad" DataField="Debilidad.Descripcion" />

        </Columns>
    </asp:GridView>

</asp:Content>
