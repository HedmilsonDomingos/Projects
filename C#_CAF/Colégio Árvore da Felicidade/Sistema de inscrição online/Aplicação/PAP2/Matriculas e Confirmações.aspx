<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Matriculas e Confirmações.aspx.cs" Inherits="PAP2.Matriculas_e_Confirmações" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/css_Admi.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            background-color: #CCCCCC;
        }
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            text-align: right;
        }
        .auto-style4 {
            text-align: left;
            font-size: large;
        }
        .auto-style5 {
            text-align: right;
            font-size: large;
            height: 40px;
            background-color: #CCCCCC;
        }
    </style>
    <style type="text/css">

        body 
        {
            background:#37a181;
        }
        .auto-style6 {
            font-size: small;
        }
        .auto-style7 {
            text-align: right;
            font-size: medium;
        }
        .auto-style8 {
            font-size: medium;
        }
        .auto-style9 {
            text-align: center;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="auto-style1">
        <strong><span class="auto-style2"><em>Área de Matrículas e Confirmações </em></span></strong>
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
                <asp:MenuItem NavigateUrl="~/Area_Aluno.aspx" Text="Secretaria" Value="Secretaria"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Area_Uniforme.aspx" Text="Área de Uniforme" Value="Área de Uniforme"></asp:MenuItem>
                <asp:MenuItem Text="Pagamento de Propinas" Value="Pagamento de Propinas" NavigateUrl="~/Área de Pagamento.aspx"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Matriculas e Confirmações.aspx" Text="Área de Matrículas e Confirmações" Value="Área de Matrículas e Confirmações"></asp:MenuItem>
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

            <asp:Panel ID="Panel_Matricula" runat="server" BorderStyle="Solid" BorderWidth="4px" ForeColor="Black" GroupingText="Área de Matrícula" Height="344px" BackColor="#CCCCCC" CssClass="auto-style8">
                <br />
                <span class="auto-style7">Matricular Aluno</span><br />
                <asp:Label ID="Label23" runat="server" Text="Dia:"></asp:Label>
                <asp:DropDownList ID="dpl_Dia_Matricula" runat="server" Height="18px" Width="53px">
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
                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label24" runat="server" Text="Mês:"></asp:Label>
                <asp:DropDownList ID="dpl_Mes_Matricula" runat="server" Height="17px" Width="102px">
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
                &nbsp;<asp:Label ID="Label25" runat="server" Text="Ano:"></asp:Label>
                <asp:TextBox ID="txt_Ano_Matricula" runat="server" Width="68px"></asp:TextBox>
                <br />
                <asp:Label ID="Label26" runat="server" Text="Código do Aluno:" CssClass="auto-style6"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:TextBox ID="txt_Codigo_Matric_Aluno" runat="server" Width="211px"></asp:TextBox>
                <br />
                <asp:Label ID="Label27" runat="server" Text="Código da Turma:" CssClass="auto-style6"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="txt_Codigo_Matric_Turma" runat="server" Width="209px"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_Matricula____Estudante" runat="server" Height="16px" OnClick="btn_Matricula____Estudante_Click" Text="Matricular" Width="78px" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_Limpar_Matricula" runat="server" Height="18px" OnClick="btn_Limpar_Matricula_Click" Text="Limpar" />
                <br />
                <span class="auto-style3">Actualizar a Matricular Aluno<strong><br /> </strong>
                <asp:Label ID="Label44" runat="server" CssClass="auto-style6" Text="Insira o novo Código da Turma do Aluno:"></asp:Label>
                <strong>&nbsp;<asp:TextBox ID="txt_Novo_Codigo_Turma" runat="server" Width="90px"></asp:TextBox>
                <br />
                </strong>
                <asp:Label ID="Label54" runat="server" CssClass="auto-style6" Text="Insira o Código da Matrícula:"></asp:Label>
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="txt_Codigo_Matric" runat="server" Width="88px"></asp:TextBox>
                <br />
                <asp:Button ID="Button15" runat="server" Height="20px" OnClick="Button15_Click" Text="Actualizar" />
                <br />
                </strong>Pesquisar Matrícula<strong><br /> </strong>
                <asp:Label ID="Label35" runat="server" Text="Código da Matrícula:"></asp:Label>
                <strong>
                <asp:TextBox ID="txt_Codigo_da_Matricula" runat="server" Height="17px" Width="90px"></asp:TextBox>
                &nbsp;<asp:Button ID="btn_Pesquisar_Matricula" runat="server" Height="18px" OnClick="btn_Pesquisar_Matricula_Click" Text="Ok" />
                &nbsp;</strong><asp:Button ID="Button16" runat="server" Height="18px" OnClick="Button16_Click" Text="Ver Todas as Matrículas" Width="180px" />
                </span>
                <br />
                <br />
                <span class="auto-style3">Eliminar Matrícula<strong><br /> </strong>
                <asp:Label ID="Label55" runat="server" Text="Código da Matrícula:"></asp:Label>
                </span>
                <asp:TextBox ID="txt_Eliminar_Matricula" runat="server" Width="90px"></asp:TextBox>
                &nbsp;<asp:Button ID="btn_Eliminar_Matricula" runat="server" Height="19px" OnClick="btn_Eliminar_Matricula_Click" Text="Eliminar" />
            </asp:Panel>

        </div>

        <div id="Area_Pesquisa_Admi" class="auto-style4">

            <asp:Panel ID="Panel_Confirmação" runat="server" BorderStyle="Solid" BorderWidth="4px" GroupingText="Área de Confirmação" Height="345px" BackColor="#CCCCCC">
                <br />
                <span class="auto-style7">Confirmar Aluno</span><br />&nbsp;<asp:Label ID="Label56" runat="server" CssClass="auto-style8" Text="Dia:"></asp:Label>
                <asp:DropDownList ID="dpl_Dia_Confir" runat="server" Height="18px" Width="53px">
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
                &nbsp;<asp:Label ID="Label57" runat="server" CssClass="auto-style8" Text="Mês:"></asp:Label>
                <asp:DropDownList ID="dpl_Mes_Confir" runat="server" Height="17px" Width="102px">
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
                &nbsp;<asp:Label ID="Label58" runat="server" CssClass="auto-style8" Text="Ano:"></asp:Label>
                <asp:TextBox ID="txt_Ano_Confir" runat="server" Width="68px"></asp:TextBox>
                <br />
                <asp:Label ID="Label59" runat="server" CssClass="auto-style8" Text="Código da Matrícula do Aluno:"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Codigo_da_Matricula_do_Aluno" runat="server" Width="130px"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button17" runat="server" Height="18px" OnClick="Button17_Click" Text="Confirmar" Width="73px" />
                &nbsp;<asp:Button ID="Button18" runat="server" Height="18px" Text="Limpar" />
                <br />
                <span class="auto-style7">Pesquisar Confirmação<strong><br /> </strong>
                <asp:Label ID="Label60" runat="server" Text="Código da Confirmação:"></asp:Label>
                </span>
                <asp:TextBox ID="txt_Codigo_da_Confirmacao" runat="server" Height="17px" Width="90px"></asp:TextBox>
                <asp:Button ID="btn_Pesquisar_Confirmação" runat="server" Height="18px" OnClick="btn_Pesquisar_Confirmação_Click" Text="Ok" />
                &nbsp;<asp:Button ID="Button19" runat="server" Height="18px" OnClick="Button19_Click" Text="Ver Todas as Confirmações" Width="172px" />
                <br />
                <br />
                <span class="auto-style7">Eliminar Confirmação<strong><br /> </strong>
                <asp:Label ID="Label61" runat="server" Text="Código da Confirmação:"></asp:Label>
                </span>
                <asp:TextBox ID="txt_Codigo_Confirmacao_Ap" runat="server" Width="90px"></asp:TextBox>
                <asp:Button ID="btn_Eliminar_Confirmação" runat="server" Height="19px" OnClick="btn_Eliminar_Confirmação_Click" Text="Eliminar" />
            </asp:Panel>

        </div>

            </div>

        <div id="Controla_Gridview">
    
            <br />
            <div class="auto-style9">
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
        <div class="auto-style5">
            <em><strong>Área de Matrículas e Confirmações </strong></em>
        </div>
    </form>
</body>
</html>
