<%@ Page Title="" Language="C#" MasterPageFile="~/Modelo.Master" AutoEventWireup="true" CodeBehind="Secretaria.aspx.cs" Inherits="PAP2.Secretaria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <link href="css/css4.css" rel="stylesheet" />
    <link href="css/cssSladersecretaria.css" rel="stylesheet" />
    <script src="js/JavaScript6Sladersecretaria.js"></script>
    <script src="js/JavaScript6Sladersecretaria2.js"></script>
    <script src="js/JavaScript6Sladersecretaria3.js"></script>


    <div id="contentor_secretaria">
  
          <div id="corpo_secretaria" >


          <div id="Dentro_corpo_secretaria1" >

        <h4 align="center" style="text-align:center">
            &nbsp;<b style="mso-bidi-font-weight:
normal"><span class="auto-style4" style="line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: large;">Introdução<o:p></o:p></span></b></h4>
              <p align="center" style="text-align:center">
                  <o:p></o:p>
              </p>
              <p class="MsoNormal">
                  <u><span class="auto-style2" style="line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;">Sr. Encarregado de educação<o:p></o:p></span></u></p>
        <h2 style="font-size: medium; line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;">
            <span style="font-weight: normal">Para a</span><span style="mso-spacerun:yes; font-weight: normal;">&nbsp;&nbsp; </span><span style="font-weight: normal">abertura e funcionamento do ano lectivo 2013, solicitamos aosss</span><span style="mso-spacerun:yes; font-weight: normal;">&nbsp;&nbsp; </span><span style="font-weight: normal">senhores</span><span style="mso-spacerun:yes; font-weight: normal;">&nbsp;&nbsp; </span><span style="font-weight: normal">uma leitura cuidada desta nota, evitando situações embaraçosas ao processo docente educativo e organiazativo da nossa instituição.</span><o:p></o:p></h2>
              <p style="font-size: medium; line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;">
                  &nbsp;</p>
    
        
              <div style="text-align: left">
                  <strong>
                  <h4>&nbsp;</h4>
                  <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4>
                  <h4>&nbsp;</h4>
                  <h4>&nbsp;</h4>
                  <h4>&nbsp;</h4>
                  <h4>&nbsp;</h4>
                  <h4>&nbsp;</h4>
                  <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-family: 'Times New Roman', Times, serif"><span style="font-size: large">&nbsp;<span class="auto-style4">Classes a serem ministradas</span></span></span></strong> </h4>
                  <p>&nbsp;</p>
                  <h2 class="auto-style5"><span style="font-weight: normal">De acordo com o processo da reforma educativa serão ministradas as seguintes classe:
       
                  <br />
                  Ensino Primário (Iniciação à 6ª Classe).<br />
&nbsp;Iº Cilco do Ensino Secundário (7ª á 9ª classe).
                  <br />
                  IIº Ciclo do Ensino Secundário (Ensino Geral 10ª à 12ª) com os seguintes cursos:<o:p><br />
                  </o:p>IIº Ciclo do Ensino Secundário 
                      <br />
                      (Técnico Profissional 10ª à 12ª)com os seguintes cursos:
                      <br />
                      *Electrónica e Telecomunicações.
         Informática. </span></h2>
                  <p class="auto-style5">&nbsp;</p>
                  <p class="auto-style5">&nbsp;</p>
                  <p class="auto-style5" style="font-size: large">&nbsp;</p>
                  <p class="auto-style5" style="font-size: large">&nbsp;</p>
                  <p class="auto-style5" style="font-size: large"><b style="mso-bidi-font-weight:normal"><span class="auto-style2" style="line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ingresso de Novos alunos<o:p></o:p></span></b></p>
                  <span class="auto-style5">Os anexos da lei nº13/01, de 31 de Dezembro determinam os limites de idade de acesso a cada um do ciclo de ensino.<br />
                      Para o ingresso no ensino não superior, a idade minima, completa ou a completar ate 31 de Maio do ano lectivo em que se realiza a matricula, é de :<br />
                  <br />               
                      &nbsp; <strong>&gt;&gt;               
                      Cinco anos de idade para a classe de iniciação;<br />                  
                      &nbsp; &gt;&gt;                  
                      Seis anos de Idade 1º classe;<br />                  
                      &nbsp; &gt;&gt;                  
                      Doze anos para 1º ciclo do Ensino Secundário.<br />
                      &nbsp; &gt;&gt;
                      Quinze anos para o 2º ciclo do Ensino Médio (Técnico <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Profissional).</strong><br />
                      <br />
                      <br style="font-weight: 700" />
                      <strong><em>-Não é permitida a matrícula de alunos em desrespeito ao desposto no número anterior.</em></strong><br />                          
                  <span style="mso-bidi-font-weight:normal">
                <strong><span class="auto-style5" style="font-size: medium">&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style4">Tabela de Proprinas</span></span></strong></span><br />
                  <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="369px" OnRowDataBound="GridView2_RowDataBound" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                      <Columns>
                          <asp:BoundField DataField="Nível" HeaderText="Nível" SortExpression="Nível" />
                          <asp:BoundField DataField="Preço" HeaderText="Preço" SortExpression="Preço" />
                          <asp:BoundField DataField="Multa" HeaderText="Multa" SortExpression="Multa" />
                          <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                      </Columns>
                  </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BD_PrincipalConnectionString %>" SelectCommand="SELECT [Nível], [Preço], [Multa], [Total] FROM [Propina]"></asp:SqlDataSource>
              </span>

                          
              </div>
    
          </div>

          <div id="Dentro_corpo_secretaria2">

            <b style="mso-bidi-font-weight:normal"><span class="auto-style2" style="line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: large;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style4">Documentos Necessários para inscrições<br />
              </span><o:p></o:p></span></b>
              &nbsp;<p></p>
              <p></p>
            &nbsp; &gt;
            Certificado de Habilitações literárias (6ª e 9ª classe).<br />
            &nbsp; &gt;
            Declaração Original com notas descremenadas <br /> &nbsp;&nbsp;&nbsp;&nbsp; (2ª,3ª5,7ª,8ª e 10ª classe).<br />
            &nbsp;&nbsp;&gt;
            Fotocópia da Cédula ou do BI.<br />
            &nbsp; &gt;
            Atestado Medico.<br />
            &nbsp; &gt;
            Cartão de Vacinas<br />
            &nbsp; &gt;
            Três fotografia tipo passe.<br />
            &nbsp; &gt;
            Talão de recenciamneto.<br />
              <br />

              <br />
              <b style="mso-bidi-font-weight:normal"><span class="auto-style2" style="line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: large;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style4">Condições de ingresso para os alunos:<br />
              </span><br />
              <br />
              </span>
    
        <p class="MsoNormal">
            <span style="font-size:12.0pt;line-height:115%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">&nbsp; <strong>&gt; </strong>Valor para a Confirmação de Matricula sera de 7.000.00 <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kz (Sete Mil Kwanzas) para todas as classes.<o:p></o:p></span></p>
        <p class="MsoNormal">
            <span style="font-size:12.0pt;line-height:115%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">&nbsp; <strong>&gt;</strong>&nbsp;Matricula pela primeira vez 7.800.00 (Sete Mil e <br /> &nbsp;&nbsp;&nbsp;&nbsp; Oitocentos Kwanzas) para todas as classes.</span></p>
              </b>
              <br />

              <span class="auto-style2" style="line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: large;"><b style="mso-bidi-font-weight:normal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              <br />
&nbsp; Normas para o pagamento de propinas<span class="auto-style4"><br />
              </span><br />
              <br />
              </b></span><span class="auto-style2" style="line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; ">
        <span class="auto-style5" style="mso-bidi-font-weight: normal; font-size: medium">&nbsp;&nbsp;&nbsp; É dever número um do aluno ou Sr. Encarregado de Educação de o pagamento pontual e assídiuo das propinas, por isso, a propina deve ser paga até dia 10 de cada mês.</span></span><span style="mso-bidi-font-weight:normal"><br />
                <strong><span class="auto-style5">
              <br />
&nbsp;&nbsp;&nbsp;
              <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </span><span class="auto-style5" style="font-size: medium">&nbsp;Uniforme</span><span class="auto-style5"><br />
&nbsp;&nbsp;
            
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="373px" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                  <Columns>
                      <asp:BoundField DataField="Titulo" HeaderText="Titulo" SortExpression="Titulo" />
                      <asp:BoundField DataField="Preco" HeaderText="Preco" SortExpression="Preco" />
                      <asp:BoundField DataField="Quantia" HeaderText="Quantia" SortExpression="Quantia" />
                  </Columns>
              </asp:GridView>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BD_PrincipalConnectionString %>" SelectCommand="SELECT [Titulo], [Preco], [Quantia] FROM [Uniforme]"></asp:SqlDataSource>
              <br />
              </span></strong>
              </div>

          </div>

          </span>

        <div id="menusladersecre">

        <div id="menu_secretaria" style="text-align: center">
            <br />
            <br />
            <br />
            <br />
             <a href="Home.aspx" class="link"><asp:Label ID="Label1" runat="server" Text=".............Home..............." CssClass="auto-style8"></asp:Label></a>
             <br />
             <a href="Matrícula.aspx" class="link"><asp:Label ID="Label12" runat="server" Text="...........Inscrição............" CssClass="auto-style8"></asp:Label></a>
             <br />
             <a href="Cadastro_Professor.aspx" class="link"><asp:Label ID="Label13" runat="server" Text="...........Enviar C.V ........." CssClass="auto-style8"></asp:Label></a>
             <br />
             <a href="Login_Administrodar.aspx" class="link"><asp:Label ID="Label14" runat="server" Text=".........Administrador........." CssClass="auto-style8"></asp:Label></a>      
             </div>
      


         <div id="slader_secretaria">

          <!-- Start WOWSlider.com BODY section -->
	<div id="wowslider-container1">
	<div class="ws_images"><ul>
<li><img src="imgsladersecretaria/images/2.jpg" alt="SECRETARIA" title="SECRETARIA" id="wows1_0"/>Serviço interno"Árvore da Felicidade"</li>
<li><img src="imgsladersecretaria/images/1.jpg" alt="SECRETARIA" title="SECRETARIA" id="wows1_1"/>Pessoal em trabalho</li>
<li><img src="imgsladersecretaria/images/3.jpg" alt="SECRETARIA" title="SECRETARIA" id="wows1_2"/>Serviço interno</li>
<li><img src="imgsladersecretaria/images/4.jpg" alt="SECRETARIA" title="SECRETARIA" id="wows1_3"/>Pessoal da secretaria em trabalho </li>
</ul></div>
<div class="ws_bullets"><div>
<a href="#" title="SECRETARIA"><img src="imgsladersecretaria/tooltips/2.jpg" alt="SECRETARIA"/>1</a>
<a href="#" title="SECRETARIA"><img src="imgsladersecretaria/tooltips/1.jpg" alt="SECRETARIA"/>2</a>
<a href="#" title="SECRETARIA"><img src="imgsladersecretaria/tooltips/3.jpg" alt="SECRETARIA"/>3</a>
<a href="#" title="SECRETARIA"><img src="imgsladersecretaria/tooltips/4.jpg" alt="SECRETARIA"/>4</a>
</div></div>
<span class="wsl"><a href="http://wowslider.com">Thumbnail Scroller</a> by WOWSlider.com v4.0</span>
	<a href="#" class="ws_frame"></a>
	</div>
	<script type="text/javascript" src="js/JavaScript6Sladersecretaria3.js"></script>
	<script type="text/javascript" src="js/JavaScript6Sladersecretaria2.js"></script>
	<!-- End WOWSlider.com BODY section -->
            
	  </div>

            </div>

        </div>

</asp:Content>