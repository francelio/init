<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ConRamal.aspx.cs" Inherits="SchoolSystem.ConRamal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <asp:Panel runat="server" ID="pnlempresa" Visible="true">


        <h1>Pesquisa de Ramal(s)</h1>
        <ul>
            <li>
                <asp:DropDownList ID="ddlcondicao" CssClass="DropDownList" runat="server">
                    <asp:ListItem Value="Ramal">Descrição do Ramal</asp:ListItem>
                    <asp:ListItem Value="Departamento">Nome do Departamento</asp:ListItem>
                </asp:DropDownList>
            </li>
        </ul>
        <ul>
            <li>
                <asp:TextBox ID="txtprocurar" CssClass="radiusInput" runat="server"></asp:TextBox>


            </li>

            <li>
                <asp:Button ID="btnprocurar" Text="Procurar" CssClass="btn btnSearch" runat="server" OnClick="btnprocurar_Click" />
            </li>
        </ul>

        <asp:GridView ID="gvramal" CssClass="mGrid" PagerStyle-CssClass = "PGR" ShowHeaderWhenEmpty="true" AlternatingRowStyle-CssClass = "alt" runat="server" EmptyDataText="Ramal Não Cadastrado..." PageSize="5">
             <Columns>
                <asp:CommandField ButtonType="Image" HeaderText="Apagar" DeleteImageUrl="~/images/icon/Remove Red.png" ShowDeleteButton="true" >
                <HeaderStyle Width="20px" />           
                </asp:CommandField>

                <asp:CommandField ButtonType="Image" HeaderText="Editar" CancelImageUrl="Imagem/erro.jpg" EditImageUrl="~/images/icon/Edit-icon.png" ShowEditButton="true" UpdateImageUrl="Imagem/aceitar.jpg" >
                <HeaderStyle Width="20px" />
                 </asp:CommandField>
            </Columns>


        </asp:GridView>


    </asp:Panel>


</asp:Content>
