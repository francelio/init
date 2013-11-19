<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ConAniversario.aspx.cs" Inherits="SchoolSystem.ConAniversario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <asp:Panel runat="server" ID="Consulta">
        <h1>Pesquisa de Aniversariante(s)</h1>
        <ul>
            <li>
                  <asp:DropDownList ID="ddlcondicao" AutoPostBack="true" CssClass="DropDownList" runat="server" OnSelectedIndexChanged="ddlcondicao_SelectedIndexChanged">
                      <%--Adicionar um placehold para quando tiver vazio--%>
                    <asp:ListItem ></asp:ListItem>
                      <asp:ListItem Value="Hoje">Aniversariantes de hoje</asp:ListItem>
                    <asp:ListItem Value="Mes">Aniversariantes do Mês</asp:ListItem>
                </asp:DropDownList>
            </li>
        </ul>
        <ul>
            <li>
                <asp:Label ID="lbmsg"  runat="server"></asp:Label>
            </li>
        </ul>
      
        <asp:GridView ID="gvdAniversario" CssClass="mGrid" PagerStyle-CssClass = "PGR" ShowHeaderWhenEmpty="true" AlternatingRowStyle-CssClass = "alt" runat="server" PageSize="5">
                       
        </asp:GridView>
    </asp:Panel>


   



</asp:Content>
