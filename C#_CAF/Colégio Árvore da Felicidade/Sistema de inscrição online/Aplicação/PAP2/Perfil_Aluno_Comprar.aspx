<%@ Page Title="" Language="C#" MasterPageFile="~/Modelo.Master" AutoEventWireup="true" CodeBehind="Perfil_Aluno_Comprar.aspx.cs" Inherits="PAP2.Perfil_Aluno_Comprar" %>
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


    <div id="dentro_corpo_perfil_Manha_2" style="text-align: left">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label22" runat="server" style="font-weight: 700; font-style: italic; font-size: large;" Text="Comprar Uniforme"></asp:Label>
        <br />
        <br />
    &nbsp;<asp:Label ID="Label20" runat="server" style="font-size: small;" Text="Nome do Estudante:"></asp:Label>
        <asp:TextBox ID="txt_Codigo_Aluno_Compra_Uni" runat="server" Width="369px" Height="18px"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label21" runat="server" style="font-size: small;" Text="Tipo de Uniforme:"></asp:Label>
        <asp:TextBox ID="txt_Descricao_Uniforme" runat="server" Width="369px"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label14" runat="server" Text="Nº.Borderom:" CssClass="auto-style5"></asp:Label>
        <asp:TextBox ID="txt_Numero_BorderomAluno_Manha" runat="server" Width="146px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label15" runat="server" Text="Banco:" CssClass="auto-style5"></asp:Label>
        <asp:DropDownList ID="dpl_BancoAluno_Manha" runat="server" Height="20px" Width="141px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>B.C.I</asp:ListItem>
            <asp:ListItem>B.F.A</asp:ListItem>
        </asp:DropDownList>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label16" runat="server" Text="Dia:" CssClass="auto-style5"></asp:Label>
        &nbsp;<asp:DropDownList ID="dpl_Dia_Comprar_Uniforme" runat="server" Height="18px" Width="52px">
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
        <asp:Label ID="Mês" runat="server" Text="Mês:" CssClass="auto-style5"></asp:Label>
            <asp:DropDownList ID="dpl_Mes_Comprar_Uniforme" runat="server" Height="17px" Width="136px">
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
            &nbsp;&nbsp;
            <asp:Label ID="Label18" runat="server" Text="Ano:" CssClass="auto-style5"></asp:Label>
        <asp:TextBox ID="txt_Ano_compra_uniforme" runat="server" Width="78px" Height="17px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:Label ID="Label19" runat="server" Text="Valor:"></asp:Label>
        <asp:TextBox ID="txt_Valor_Aluno_Manha" runat="server" Width="134px" Height="18px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btn_Compra" runat="server" OnClick="btn_Compra_Click" Text="Comprar" Height="18px" />
        &nbsp;<asp:Button ID="btn_Limpar_Compra" runat="server" OnClick="btn_Limpar_Compra_Click" Text="Limpar" Width="92px" Height="18px" />
&nbsp;<br />
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label28" runat="server" Text="Uniforme Disponível" style="font-size: medium"></asp:Label>
        <br />
        </em>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
                <asp:BoundField DataField="Preço" HeaderText="Preço" SortExpression="Preço" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Banco_de_Dados_Sistema_Inscrição_OnlineConnectionString %>" SelectCommand="SELECT [Tipo], [Preço] FROM [Uniforme]"></asp:SqlDataSource>
        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
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
