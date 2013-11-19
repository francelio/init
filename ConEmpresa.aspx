<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ConEmpresa.aspx.cs" Inherits="SchoolSystem.ConEmpresa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">

    <asp:Panel runat="server" ID="pnlempresa" Visible="true">


        <h1>Pesquisa de Empresa(s)</h1>
        <ul>
            <li>
                <asp:DropDownList ID="ddlcondicao" CssClass="DropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlcondicao_SelectedIndexChanged">
                    <%--TODO: Emplementar foco automativo--%>
                    <asp:ListItem Value="Empresa">Nome da Empresa</asp:ListItem>
                    <asp:ListItem Value="Cep">Cep da Empresa</asp:ListItem>
                </asp:DropDownList>
            </li>
        </ul>
        <ul>
            <li>
                <%--TODO: Adicionar label para identiicar campo--%>
                <asp:Label runat="server" ID="lblmas">Insira o Nome da Empresa</asp:Label>
                <asp:TextBox ID="txtprocurar" CssClass="radiusInput" runat="server" >

                   
                </asp:TextBox>



            </li>

            <li>
                  <asp:Button ID="btnprocurar" Text="Procurar" CssClass="btn btnSearch" runat="server" OnClick="btnprocurar_Click" />


            </li>
             </ul>
        <ul>
          <asp:Label runat="server" ID="ast" ForeColor="Red"></asp:Label>
        </ul>

        <asp:Panel runat="server" ScrollBars="Horizontal" Width="700px">
            <asp:GridView ID="gvempresa" CssClass="mGrid" PagerStyle-CssClass="PGR"  AlternatingRowStyle-CssClass="alt" runat="server" EmptyDataText="Empresa Não Cadastrado..." PageSize="5" ShowHeaderWhenEmpty="True">
                <AlternatingRowStyle CssClass="alt" />
                <Columns>
                    <asp:CommandField ButtonType="Image" HeaderText="Apagar" DeleteImageUrl="~/images/icon/Remove Red.png" ShowDeleteButton="true">
                        <HeaderStyle Width="20px" />
                    </asp:CommandField>

                    <asp:CommandField ButtonType="Image" HeaderText="Editar" CancelImageUrl="Imagem/erro.jpg" EditImageUrl="~/images/icon/Edit-icon.png" ShowEditButton="true" UpdateImageUrl="Imagem/aceitar.jpg">
                        <HeaderStyle Width="20px" />
                    </asp:CommandField>




                </Columns>
                <PagerStyle CssClass="PGR" />
            </asp:GridView>
        </asp:Panel>
    </asp:Panel>



</asp:Content>
