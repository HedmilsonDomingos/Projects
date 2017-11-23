<%@ Page Title="" Language="C#" MasterPageFile="~/Modelo.Master" AutoEventWireup="true" CodeBehind="Matrícula.aspx.cs" Inherits="PAP2.Matrícula" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="matric" style="text-align: left">

        <div id="cadastrotxt">

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-weight: 700; font-style: italic"><span class="auto-style4" style="font-size: xx-large; color: #800000">Ficha de Inscrição
            </span>
            <span style="font-style: normal; font-weight: normal"><span style="font-size: xx-large; color: #800000">
            <br />
            </span></span>
            </span><span style="font-size: xx-large; color: #800000">&nbsp;&nbsp;</span><asp:Label ID="Label26" runat="server" Text="Nome:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_Nome" runat="server" Width="340px"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Nome Completo:"></asp:Label>
            &nbsp;
            &nbsp;<asp:TextBox ID="txt_Nome_Completo" runat="server" Width="340px"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Nome do Pai:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;<asp:TextBox ID="txt_Nome_Pai" runat="server" Width="338px"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="Nome da Mãe:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;
            <asp:TextBox ID="txt_Nome_Mae" runat="server" Width="340px"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label5" runat="server" Text="Data de Nascimento:"></asp:Label>
            &nbsp;<asp:DropDownList ID="dpl_Dia_Nasc" runat="server">
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
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="dpl_Mes_Nasc" runat="server">
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="dpl_Ano_Nasc" runat="server" Height="25px" Width="91px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>1980</asp:ListItem>
                <asp:ListItem>1981</asp:ListItem>
                <asp:ListItem>1982</asp:ListItem>
                <asp:ListItem>1983</asp:ListItem>
                <asp:ListItem>1984</asp:ListItem>
                <asp:ListItem>1985</asp:ListItem>
                <asp:ListItem>1986</asp:ListItem>
                <asp:ListItem>1987</asp:ListItem>
                <asp:ListItem>1988</asp:ListItem>
                <asp:ListItem>1989</asp:ListItem>
                <asp:ListItem>1990</asp:ListItem>
                <asp:ListItem>1991</asp:ListItem>
                <asp:ListItem>1992</asp:ListItem>
                <asp:ListItem>1993</asp:ListItem>
                <asp:ListItem>1994</asp:ListItem>
                <asp:ListItem>1995</asp:ListItem>
                <asp:ListItem>1996</asp:ListItem>
                <asp:ListItem>1997</asp:ListItem>
                <asp:ListItem>1998</asp:ListItem>
                <asp:ListItem>1999</asp:ListItem>
                <asp:ListItem>2000</asp:ListItem>
                <asp:ListItem>2001</asp:ListItem>
                <asp:ListItem>2002</asp:ListItem>
                <asp:ListItem>2003</asp:ListItem>
                <asp:ListItem>2004</asp:ListItem>
                <asp:ListItem>2005</asp:ListItem>
                <asp:ListItem>2006</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
            </asp:DropDownList>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label10" runat="server" Text="Provincia:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Txt_Provincia" runat="server" Width="145px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label11" runat="server" Text="Município:"></asp:Label>
            <asp:TextBox ID="txt_Municipio" runat="server" Width="155px"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label24" runat="server" Text="Morada:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_Morada" runat="server" Width="193px"></asp:TextBox>
            <asp:Label ID="Label13" runat="server" Text="Telefone:"></asp:Label>
            <asp:TextBox ID="txt_Telefone" runat="server" Width="132px" TextMode="Number"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label12" runat="server" Text="E-mail:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_Email" runat="server" Width="227px"></asp:TextBox>
&nbsp;<asp:Label ID="Label16" runat="server" Text="Genero:"></asp:Label>
            <asp:DropDownList ID="dpl_Genero" runat="server" Height="17px" Width="104px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Masculino</asp:ListItem>
                <asp:ListItem>Ferminino</asp:ListItem>
            </asp:DropDownList>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label25" runat="server" Text="Estado Civil:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="Dpl_Estado_Civil" runat="server" Height="16px" Width="117px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Solteiro(a)</asp:ListItem>
                <asp:ListItem>Casado(a)</asp:ListItem>
                <asp:ListItem>Divorciado(a)</asp:ListItem>
                <asp:ListItem>Viúvo(a)</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label15" runat="server" Text="Curso:"></asp:Label>
            <asp:DropDownList ID="DplCurso" runat="server" Height="18px" Width="227px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Eletrónica e Telecom</asp:ListItem>
                <asp:ListItem>Informática</asp:ListItem>
                <asp:ListItem>Ciências Físicas Biológicas</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;
            <br />
            &nbsp;&nbsp;&nbsp; <asp:Label ID="Label19" runat="server" Text="C.Pessoal / B.Identidade nº:"></asp:Label>
            <asp:TextBox ID="txt_NBI" runat="server" Width="173px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label14" runat="server" Text="Idade:"></asp:Label>
            &nbsp;<asp:TextBox ID="txt_Idade" runat="server" Width="95px"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label20" runat="server" Text="Data de Emissão:"></asp:Label>
            &nbsp;
            <asp:DropDownList ID="dpl_Dia_Emissao" runat="server">
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
            &nbsp;&nbsp;
            <asp:DropDownList ID="dpl_Mes_Emissao" runat="server">
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
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_Ano_Emissao" runat="server" Width="92px"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label18" runat="server" Text="Classe:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DplClasse" runat="server" Height="24px" Width="91px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Prè</asp:ListItem>
                <asp:ListItem>1ª</asp:ListItem>
                <asp:ListItem>2ª</asp:ListItem>
                <asp:ListItem>3ª</asp:ListItem>
                <asp:ListItem>4ª</asp:ListItem>
                <asp:ListItem>5ª</asp:ListItem>
                <asp:ListItem>6ª</asp:ListItem>
                <asp:ListItem>7ª</asp:ListItem>
                <asp:ListItem>8ª</asp:ListItem>
                <asp:ListItem>9ª</asp:ListItem>
                <asp:ListItem>10ª</asp:ListItem>
                <asp:ListItem>11ª</asp:ListItem>
                <asp:ListItem>12ª</asp:ListItem>
            </asp:DropDownList>
            &nbsp; 
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="BtnSalvar" runat="server" Text="Enviar" OnClick="Button3_Click" Width="90px" Height="23px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_Limpar" runat="server" OnClick="btn_Limpar_Click" Text="Limpar" />
            <br />
            &nbsp;<br />
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Banco_de_Dados_Sistema_Inscrição_OnlineConnectionString %>" SelectCommand="SELECT * FROM [Adm]"></asp:SqlDataSource>
            <br />
        </div>
        
&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image7" runat="server" Height="200px" ImageUrl="~/img/logo_caf.gif" Width="270px" />
     
    </div>

</asp:Content>
