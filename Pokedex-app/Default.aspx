<%@ Page Title="" Language="C#" MasterPageFile="~/PokeMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Pokedex_app.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Bienvenido!</h1>

    <p>
        Llegaste al Pokedex Web. Tu lugar de pokemones.
    </p>

    <div class="row row-cols-1 row-cols-md-3 g-4">

        <%--<%
        foreach (dominio.Pokemon poke in ListaPokemon)
        { 
        %>
              <div class="col">
                <div class="card h-100">
                  <img src="<%: poke.UrlImagen %>" class="card-img-top" alt="Imagen de <%: poke.Nombre %>">
                  <div class="card-body">
                    <p class="card-text">Nº <%: poke.Numero %></p>
                    <h5 class="card-title"><%: poke.Nombre %></h5>
                    <p class="card-text"><%: poke.Descripcion %>.</p>
                    <p class="btn btn-primary"><%: poke.Tipo %></p>
                    <p class="btn btn-danger"><%: poke.Debilidad %></p>
                      <a href="DetallePokemon.aspx?=<%: poke.Id %>">Detalle</a>
                  </div>
                </div>
              </div>     

      <%} %>  --%>

        <asp:Repeater ID="repRepetidor" runat="server">
            <ItemTemplate>
                <div class="col">
                    <div class="card h-100">
                        <img src="<%#Eval("UrlImagen") %>" class="card-img-top" 
                            alt="Imagen de <%#Eval("Nombre") %>">
                        <div class="card-body">
                            <p class="card-text">Nº <%#Eval("Numero") %></p>
                            <h5 class="card-title"><%#Eval("Nombre") %></h5>
                            <p class="card-text"><%#Eval("Descripcion") %>.</p>
                            <a href="DetallePokemon.aspx?=<%#Eval("Id") %>">Detalle</a>
                            <asp:Button ID="btnEjemplo" runat="server" Text="Ejemplo" 
                                CssClass="btn btn-primary" CommandArgument='<%#Eval("Id") %>' 
                                CommandName="PokemonId" OnClick="btnEjemplo_Click" />
                        </div>
                    </div>
                </div>

            </ItemTemplate>
        </asp:Repeater>

    </div>
</asp:Content>
