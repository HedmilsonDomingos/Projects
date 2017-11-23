<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Area_Aluno.aspx.cs" Inherits="PAP2.Exemplo7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/css_Admi.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
            background-color: #CCCCCC;
        }
        .auto-style3 {
            text-decoration: underline;
        }
        .auto-style4 {
            height: 347px;
        }
        </style>

     <style type="text/css">

        body 
        {
            background:#37a181;
        }
         .auto-style3 {
            font-size: medium;
            text-decoration: underline;
        }
         .auto-style6 {
             text-align: right;
             background-color: #CCCCCC;
         }
         .auto-style7 {
             font-size: large;
         }
         .auto-style8 {
             height: 400px;
         }
         .auto-style9 {
             text-align: center;
         }
         .auto-style10 {
             margin-top: 0;
         }
         </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="auto-style1">
        <strong>Secretaria</strong>
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
        <div id="cont_Aluno">


        <div id="Area_Cadastro" class="auto-style8">

            <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" BorderWidth="4px" ForeColor="Black" GroupingText="Área de Cadastro" Height="344px" BackColor="#CCCCCC">
                <br />
                <asp:Label ID="Label19" runat="server" Text="Turma:"></asp:Label>
                &nbsp;&nbsp;<asp:TextBox ID="txt_Cadastro_de_Turma" runat="server" Width="119px"></asp:TextBox>
                <asp:Button ID="Btn_Cadastra___Curso" runat="server" Height="16px" OnClick="Btn_Cadastra___Curso_Click" Text="Ok" Width="27px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label20" runat="server" Text="Sala:"></asp:Label>
&nbsp;
                <asp:TextBox ID="txt_Cadastrar_Sala" runat="server"></asp:TextBox>
                <asp:Button ID="btn_Cadastra____Sala" runat="server" Height="16px" OnClick="btn_Cadastra____Sala_Click" Text="Ok" Width="27px" />
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="Label21" runat="server" Text="Periodo:"></asp:Label>
                <asp:TextBox ID="txt_Cadastrar_Periodo" runat="server" Width="118px"></asp:TextBox>
                <asp:Button ID="btn_Cadastra____Periodo" runat="server" Height="16px" OnClick="btn_Cadastra____Periodo_Click" Text="Ok" Width="27px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label22" runat="server" Text="Curso:"></asp:Label>
                <asp:TextBox ID="txt_Cadastrar_Curso" runat="server"></asp:TextBox>
                <asp:Button ID="btn_Cadastra____Curso" runat="server" Height="16px" OnClick="btn_Cadastra____Curso_Click" Text="Ok" Width="27px" />
                <br />
            </asp:Panel>

        </div>

        <div id="Area_Pesquisa" class="auto-style4">

            <asp:Panel ID="Panel2" runat="server" BorderStyle="Solid" BorderWidth="4px" GroupingText="Área de Pesquisa" Height="348px" BackColor="#CCCCCC">
                <br />
                <asp:Label ID="Label38" runat="server" Text="Código da Inscrião"></asp:Label>
                :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Pesquisa_Inscricao" runat="server" Width="90px"></asp:TextBox>
                <asp:Button ID="btn_Pesquisa_Inscricao" runat="server" OnClick="btn_Pesquisa_Inscricao_Click" Text="Ok" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_Ver_Todas_Inscricoes" runat="server" OnClick="btn_Ver_Todas_Inscricoes_Click" Text="Ver Todas Inscrições" Width="181px" />
                <br />
                <br />
                <asp:Label ID="Label32" runat="server" Text="Código da Turma:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Pesquisar_Turma" runat="server" Width="90px"></asp:TextBox>
                <asp:Button ID="btn_Pesquizar_Turma_Por_Id" runat="server" Height="18px" OnClick="btn_Pesquizar_Turma_Por_Id_Click" Text="Ok" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button7" runat="server" Height="18px" Text="Ver Tadas as Turmas" Width="181px" OnClick="Button7_Click" />
                <br />
                <br />
                <asp:Label ID="Label33" runat="server" Text="Código da Sala:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Pesquisar_Sala" runat="server" Width="90px"></asp:TextBox>
                <asp:Button ID="Pesquisar_Sala_Por_Id" runat="server" Height="18px" OnClick="Pesquisar_Sala_Por_Id_Click" Text="Ok" Width="24px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button8" runat="server" Height="18px" Text="Ver Todas as Salas" Width="181px" OnClick="Button8_Click" />
                <br />
                <br />
                <asp:Label ID="Label34" runat="server" Text="Código do Periodo:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Código_do_Periodo" runat="server" Width="90px"></asp:TextBox>
                <asp:Button ID="btn_Pesquisar_Periodo" runat="server" Height="18px" Text="Ok" OnClick="btn_Pesquisar_Periodo_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button9" runat="server" Height="18px" Text="Ver Todos os Periodos" Width="181px" OnClick="Button9_Click" />
                <br />
                <br />
                <asp:Label ID="Label35" runat="server" Text="Código do Curso:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Codigo_do_Curso" runat="server" Width="90px"></asp:TextBox>
                <asp:Button ID="btn_Pesquisar_Curso" runat="server" Height="18px" Text="Ok" OnClick="btn_Pesquisar_Curso_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button10" runat="server" Height="18px" Text="Ver Todos os Cursos" Width="181px" OnClick="Button10_Click" />
                <br />
                <br />
                <asp:Label ID="Label39" runat="server" Text="Código Classe:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Pesquisa_Classe" runat="server" Height="16px" Width="90px"></asp:TextBox>
                <asp:Button ID="Btn_Pesquisa_Classe" runat="server" OnClick="Btn_Pesquisa_Classe_Click" Text="Ok" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_Visualiza_Todas_Classe" runat="server" OnClick="btn_Visualiza_Todas_Classe_Click" Text="Ver Todas as Classes" Width="181px" />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <br />
            </asp:Panel>

        </div>

        <div id="Area_Actualizar">

            <asp:Panel ID="Panel3" runat="server" BorderStyle="Solid" BorderWidth="4px" GroupingText="Área de Actualização dos Dados" Height="345px" BackColor="#CCCCCC">
                <br />
                <span class="auto-style3"><strong>Turma</strong></span><br />
                <asp:Label ID="Label40" runat="server" Text="Insira o Código da Classe do Aluno:"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="txt_Codigo_Actualiza_Classe_T" runat="server" Width="90px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label41" runat="server" Text="Insira o Código do Periodo do Aluno:"></asp:Label>
                &nbsp;<asp:TextBox ID="txt_Codigo_Actualiza_Periodo_T" runat="server" Width="90px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label42" runat="server" Text="Insira o Código da Sala do Aluno:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Codigo_Actualiza_Sala_T" runat="server" Width="90px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label43" runat="server" Text="Insira o Código do Curso do Aluno:"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Codigo_Actualiza_Curso_T" runat="server" Width="90px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label53" runat="server" Text="Insira o Código da Turma:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_ID_Turma" runat="server" Width="90px"></asp:TextBox>
                <br />
                <asp:Button ID="btn_Cadastrar_Aluno_na_Turma" runat="server" Height="18px" Text="Actualizar" Width="90px" OnClick="btn_Cadastrar_Aluno_na_Turma_Click1" />
                &nbsp;<asp:Button ID="Button16" runat="server" Height="18px" OnClick="Button16_Click" Text="Limpar" />
                <br />
            </asp:Panel>

        </div>

        <div id="Area_Delete">

            <asp:Panel ID="Panel4" runat="server" BorderStyle="Solid" BorderWidth="4px" GroupingText="Área de Eliminar Dados" Height="345px" BackColor="#CCCCCC">
                <br />
                <asp:Label ID="Label47" runat="server" Text="Código da Sala:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Codigo_Sala_Ap" runat="server" Width="100px"></asp:TextBox>
                <asp:Button ID="btn_Apagar_Sala" runat="server" Height="18px" OnClick="btn_Apagar_Sala_Click" Text="Apagar" />
                <br />
                <br />
                <asp:Label ID="Label48" runat="server" Text="Código do Curso:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Codigo_Curso_Ap" runat="server" Width="100px"></asp:TextBox>
                <asp:Button ID="btn_Apagar_Curso" runat="server" Height="18px" Text="Apagar" OnClick="btn_Apagar_Curso_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <asp:Label ID="Label46" runat="server" Text="Código da Turma:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Codigo_Turma_Ap" runat="server" Width="100px"></asp:TextBox>
                <asp:Button ID="btn_Apagar_Turma" runat="server" Height="18px" Text="Apagar" OnClick="btn_Apagar_Turma_Click" />
                <br />
                <br />
                <asp:Label ID="Label49" runat="server" Text="Código do Periodo:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Codigo_Periodo_Ap" runat="server" Width="100px"></asp:TextBox>
                <asp:Button ID="btn_Apagar_Periodo" runat="server" Height="18px" Text="Apagar" OnClick="btn_Apagar_Periodo_Click" />
                <br />
                <br />
                <asp:Label ID="Label45" runat="server" Text="Código da Inscrição:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Codigo_Inscricao_Ap" runat="server" Width="100px"></asp:TextBox>
                <asp:Button ID="btn_Apagar_Inscricao" runat="server" Height="18px" Text="Apagar" OnClick="btn_Apagar_Inscricao_Click" />
                <br />
            </asp:Panel>

        </div>


            <br />
            <br />


        </div>

        <div id="Controla_Gridview">
    
            <br />
            <br />
    
            <div class="auto-style9">
    
        <asp:GridView ID="GridView1" runat="server" CellPadding="3" ForeColor="Black" OnRowDataBound="GridView1_RowDataBound" CssClass="auto-style10" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
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
            </div>


         <div class="auto-style6">

             <em><span class="auto-style7">Secretaria</span></em><br />
            <br />
             </div>
    </form>
</body>
</html>
