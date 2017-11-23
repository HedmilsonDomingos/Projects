<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Área_Professor.aspx.cs" Inherits="PAP2.Área_Professor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/css_Admi.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-decoration: underline;
            font-size: xx-large;
        }
        .auto-style3 {
            background-color: #CCCCCC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<div class="auto-style1">
    
        <span class="auto-style2"><strong><em>Área de Professor</em></strong></span><br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
        <br />
        <div id="cont_Prof">


        <div id="Area_Cadastro_Prof">

            <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" BorderWidth="4px" ForeColor="Black" GroupingText="Área de Admição" Height="255px">
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Width="363px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Dia:"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="dpl_Dia_Adm_Prof" runat="server" Height="18px" Width="60px">
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
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Mês:"></asp:Label>
                &nbsp;&nbsp;
                <asp:DropDownList ID="dpl_Mes_Adm_Prof" runat="server" Height="18px" Width="118px">
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
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Ano:"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="txt_Ano_Adm_Prof" runat="server" Width="116px"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_Admitir_Prof" runat="server" Text="Admitir" />
                &nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="Limpar" />
                <br />
            </asp:Panel>

        </div>

        <div id="Area_Pesquisa_Prof">

            <asp:Panel ID="Panel2" runat="server" BorderStyle="Solid" BorderWidth="4px" GroupingText="Área de Pesquisa" Height="255px">
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Text="Insira o Código da Admição:"></asp:Label>
                <asp:TextBox ID="txt_Codigo_da_Admicao" runat="server" Width="88px"></asp:TextBox>
                <asp:Button ID="btn_Pesquisar_Admicao" runat="server" Height="18px" Text="Ok" />
                <asp:Button ID="btn_Ver_Todas_Admicoes" runat="server" Height="18px" Text="Ver Todas Admições" Width="142px" />
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" Text="Indique o C.V:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_Abrir_CV" runat="server" Height="18px" Text="Abrir" />
                <br />
            </asp:Panel>

        </div>

        <div id="Area_Actualizar_Prof">

            <asp:Panel ID="Panel3" runat="server" BorderStyle="Solid" BorderWidth="4px" GroupingText="Área de Actualização dos Dados" Height="255px">
                <br />
                <br />
                <asp:Label ID="Label7" runat="server" Text="Insira o Novo Código da Admição:"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label8" runat="server" Text="Insira o Código do C.V:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button6" runat="server" Height="18px" Text="Actualizar" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button7" runat="server" Height="18px" Text="Limpar" />
                <br />
            </asp:Panel>

        </div>

        <div id="Area_Delete_Prof">

            <asp:Panel ID="Panel4" runat="server" BorderStyle="Solid" BorderWidth="4px" GroupingText="Área de Eliminar Dados" Height="255px">
                <br />
                <br />
                <asp:Label ID="Label9" runat="server" Text="Insira o Código da Admição:"></asp:Label>
                <asp:TextBox ID="txt_Código_da_Admição_Ap" runat="server"></asp:TextBox>
                &nbsp;
                <asp:Button ID="btn_Apagar_Admição" runat="server" Height="18px" Text="Apagar" />
                <br />
                <br />
                <asp:Label ID="Label10" runat="server" Text="Insira o Código do C.V:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Codigo_do_CV_Ap" runat="server"></asp:TextBox>
                &nbsp;
                <asp:Button ID="btn_Codigo_do_CV_Ap" runat="server" Height="18px" Text="Apagar" />
                <br />
            </asp:Panel>

        </div>


            <br />
            <br />


        </div>

        <div id="Controla_Gridview">

            <asp:Button ID="Button1" runat="server" PostBackUrl="~/PáginadoAdministrador.aspx" Text="&lt;&lt;&lt; Voltar" CssClass="auto-style3" />
            </div>
    </form>
</body>
</html>
