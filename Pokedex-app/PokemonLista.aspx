<%@ Page Title="" Language="C#" MasterPageFile="~/PokeMaster.Master" AutoEventWireup="true" CodeBehind="PokemonLista.aspx.cs" Inherits="Pokedex_app.PokemonLista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>
        Lista de Pokemones!
    </h1>

    <asp:GridView ID="dgvPokemons" runat="server" DataKeyNames="Id" 
        cssClass="table table-striped table-hover" AutoGenerateColumns="false" 
        OnSelectedIndexChanged="dgvPokemons_SelectedIndexChanged" 
        OnPageIndexChanging="dgvPokemons_PageIndexChanging" AllowPaging="true" PageSize="5">
        <Columns>
            <asp:BoundField HeaderText="Número" DataField="Numero" />
            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
            <asp:BoundField HeaderText="Tipo" DataField="Tipo.Descripcion" />
            <asp:CommandField HeaderText="Acción" ShowSelectButton="true" SelectText="✍️" />
        </Columns>
    </asp:GridView>
    <a href="FormularioPokemon.aspx" class="btn btn-primary">Agregar</a>
</asp:Content>
