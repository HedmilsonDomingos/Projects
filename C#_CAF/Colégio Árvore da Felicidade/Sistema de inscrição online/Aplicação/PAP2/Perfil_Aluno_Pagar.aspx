<%@ Page Title="" Language="C#" MasterPageFile="~/Modelo.Master" AutoEventWireup="true" CodeBehind="Perfil_Aluno_Pagar.aspx.cs" Inherits="PAP2.Perfil_Aluno_Pagar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div id="contentor_perfil">

<div id="corpo_perfil">



<div id="dentro_corpo_perfil_Manha_1">
&nbsp;&nbsp;&nbsp;


    <asp:Image ID="Image7" runat="server" Height="155px" Width="155px" ImageUrl="~/imagens/Foto_User.gif" />
    <br />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Actualizar Foto" Width="155px" Height="18px" />


    <br />


    <br />
    
    <asp:Label ID="Label9" runat="server" Text="Nome Completo"></asp:Label>
    <br />
    </div>


    <div id="dentro_corpo_perfil_Manha_4" style="font-size: medium">
        <strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pagamento de Propinas<br />
        <br />
        </em></strong>
        <asp:Label ID="Label29" runat="server" CssClass="auto-style5" Text="Insira o Dia:"></asp:Label>
        <asp:DropDownList ID="dpl_Dia_PagamentoAluno" runat="server" Height="18px" Width="60px">
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
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label30" runat="server" CssClass="auto-style5" Text="Mês:"></asp:Label>
            <asp:DropDownList ID="dpl_Mes_Pagamento_Aluno" runat="server" Height="18px" Width="144px">
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
            &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label31" runat="server" CssClass="auto-style5" Text="Ano:"></asp:Label>
        <asp:TextBox ID="txt_Ano_Pagamento_Aluno" runat="server" Height="18px" Width="78px"></asp:TextBox>
        <br />
        <asp:Label ID="Label32" runat="server" CssClass="auto-style5" Text="Valor:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt_Valor_Pago" runat="server" Width="131px"></asp:TextBox>
&nbsp;<asp:Label ID="Label33" runat="server" CssClass="auto-style5" Text="Nº.Borderom"></asp:Label>
        <asp:TextBox ID="txt_N_Borderom_Pagamento" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label34" runat="server" CssClass="auto-style5" Text="Banco:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="dpl_Banco_Pagamento" runat="server" Height="18px" Width="131px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>B.C.I</asp:ListItem>
            <asp:ListItem>B.F.A</asp:ListItem>
        </asp:DropDownList>
&nbsp;
        <asp:Button ID="Button2" runat="server" Height="18px" OnClick="Button2_Click" Text="Enviar" />
        <br />
   </div>

        </div>

<div id="menu_perfil">

     <br />

     <br />

     <a href="Home.aspx" class="link"><asp:Label ID="Label1" runat="server" Text="..................Home................." CssClass="auto-style8"></asp:Label></a>     
            <br />
    <a href="Perfil_Aluno.aspx" class="link"><asp:Label ID="Label6" runat="server" Text="..................Perfil.................." CssClass="auto-style8"></asp:Label></a>
            <br />
             <a href="Agenda.aspx" class="link"><asp:Label ID="Label3" runat="server" Text=".................Agenda..............." CssClass="auto-style8"></asp:Label></a>
      <a href="Eventos.aspx" class="link"><asp:Label ID="Label13" runat="server" Text=".................Eventos............." CssClass="auto-style8"></asp:Label></a>
            <br />
             <a href="Perfil_Aluno_Ver_Notas.aspx" class="link"><asp:Label ID="Label4" runat="server" Text="................Ver Notas............" CssClass="auto-style8"></asp:Label></a>
            <br />
             <a href="Perfil_Aluno_Pagar.aspx" class="link"><asp:Label ID="Label5" runat="server" Text="..............Pag.Propinas........" CssClass="auto-style8"></asp:Label></a>
            <br />
    <a href="Perfil_Aluno_Comprar.aspx" class="link"><asp:Label ID="Label2" runat="server" Text="............Comp.Uniforme......" CssClass="auto-style8"></asp:Label></a>
           
            </div>



    



    </div>


</asp:Content>
