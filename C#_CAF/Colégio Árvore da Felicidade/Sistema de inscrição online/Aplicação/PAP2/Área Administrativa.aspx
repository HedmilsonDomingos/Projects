<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Área Administrativa.aspx.cs" Inherits="PAP2.Área_Administrativa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/css_Admi.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
            background-color: #CCCCCC;
        }
    </style>

    <style type="text/css">

        body 
        {
            background:#37a181;
        }
         .auto-style2 {
            text-align: right;
            background-color: #CCCCCC;
        }
        .auto-style3 {
            font-size: medium;
            }
         .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            text-align: left;
        }
         </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
        <strong>Área Administrativa</strong>
        <br />

    </div>

        <strong>

        <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Small" ForeColor="#7C6F57" StaticSubMenuIndent="10px" Orientation="Horizontal">
            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#F7F6F3" />
            <DynamicSelectedStyle BackColor="#5D7B9D" />
            <Items>
                <asp:MenuItem NavigateUrl="~/Home.aspx" Text="Home" Value="Home"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#5D7B9D" />
        </asp:Menu>
        </strong>

                <br />
        <br />
        <br />
        <br />

        <div id="cont_Area_Administrativa">

        <div id="Area_Admicao">

            <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" BorderWidth="4px" ForeColor="Black" GroupingText="Área de Admição" Height="344px" BackColor="#CCCCCC">
                <br />
                <asp:Label ID="Label41" runat="server" Text="Nome:"></asp:Label>
                <asp:TextBox ID="txt_Nome_Admicao" runat="server" Width="324px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label42" runat="server" Text="Dia:"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="dpl_Dia_Admicao" runat="server" Height="18px" Width="53px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>01</asp:ListItem>
                    <asp:ListItem>02</asp:ListItem>
                    <asp:ListItem>03</asp:ListItem>
                    <asp:ListItem>04</asp:ListItem>
                    <asp:ListItem>05</asp:ListItem>
                    <asp:ListItem>06</asp:ListItem>
                    <asp:ListItem>07</asp:ListItem>
                    <asp:ListItem>08</asp:ListItem>
                    <asp:ListItem>09</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                </asp:DropDownList>
                &nbsp;<asp:Label ID="Label43" runat="server" Text="Mês:"></asp:Label>
                &nbsp;<asp:DropDownList ID="dpl_Mes_Admicao" runat="server" Height="18px" Width="131px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Janeiro</asp:ListItem>
                    <asp:ListItem>Fevereiro</asp:ListItem>
                    <asp:ListItem>Março</asp:ListItem>
                    <asp:ListItem>Abril</asp:ListItem>
                    <asp:ListItem>Maio</asp:ListItem>
                    <asp:ListItem>Junho</asp:ListItem>
                    <asp:ListItem>Julho</asp:ListItem>
                    <asp:ListItem>Agosto</asp:ListItem>
                    <asp:ListItem>Setembro</asp:ListItem>
                    <asp:ListItem>Outubro</asp:ListItem>
                    <asp:ListItem>Novembro</asp:ListItem>
                    <asp:ListItem>Dezembro</asp:ListItem>
                </asp:DropDownList>
                &nbsp;<asp:Label ID="Label44" runat="server" Text="Ano:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Width="53px"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="Button3" runat="server" Height="20px" Text="Limpar" />
            </asp:Panel>

        </div>

        <div id="Area_Pesquisa_Admi" class="auto-style5">

            <asp:Panel ID="Panel2" runat="server" BorderStyle="Solid" BorderWidth="4px" GroupingText="Área de Pesquisa" Height="345px" BackColor="#CCCCCC">
                <br />
                <asp:Label ID="Label38" runat="server" Text="Código do C.V:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Pesquisa_CV" runat="server" Width="100px"></asp:TextBox>
                <asp:Button ID="btn_Pesquisa_CV_por_ID" runat="server" OnClick="btn_Pesquisa_Inscricao_Click" Text="Ok" Height="20px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_Ver_Todos_CV" runat="server" OnClick="btn_Ver_Todas_Inscricoes_Click" Text="Ver Todos os C.Vs" Width="181px" Height="18px" />
                <br />
                <br />
                <asp:Label ID="Label32" runat="server" Text="Código da Admiçaõ:"></asp:Label>
                &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txt_Pesquisar_Admicao" runat="server" Width="100px"></asp:TextBox>
                <asp:Button ID="btn_Pesquizar_Admicao_Por_Id" runat="server" Height="20px" OnClick="btn_Pesquizar_Turma_Por_Id_Click" Text="Ok" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_Ver_Todas_as_Admicoes" runat="server" Height="20px" Text="Ver Tadas as Admições" Width="181px" OnClick="Button7_Click" />
                <br />
                <br />
                <asp:Label ID="Label39" runat="server" Text="Código do Pagamento:"></asp:Label>
                <asp:TextBox ID="txt_Pesquisar_Pagamento" runat="server" Width="100px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Height="18px" OnClick="Button1_Click" Text="Ok" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Height="20px" OnClick="Button2_Click" Text="Ver Todos os Pagamentos" Width="181px" />
                <br />
                <br />
                <asp:Label ID="Label40" runat="server" Text="Código da Venda:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Pesquisar_Vendas" runat="server" Width="100px"></asp:TextBox>
                <asp:Button ID="btn_Pesuisar_Venda_por_ID" runat="server" Height="20px" OnClick="btn_Pesuisar_Venda_por_ID_Click" Text="Ok" />
                <asp:Button ID="btn_Ver_Todas_Vendas" runat="server" Height="20px" OnClick="btn_Ver_Todas_Vendas_Click" Text="Ver Todas as Vendas de Uniforme" Width="211px" />
            </asp:Panel>

        </div>

            </div>

        <div id="Controla_Gridview">
    
            <br />
            <div class="auto-style4">
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            </div>
        <div class="auto-style2">

        <strong><span class="auto-style3"><em>Área Administrativa</em></span></strong><br />
            <br />
    </div>
    </form>
</body>
</html>
