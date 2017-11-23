<%@ Page Title="" Language="C#" MasterPageFile="~/Modelo.Master" AutoEventWireup="true" CodeBehind="PáginadoAdministrador.aspx.cs" Inherits="PAP2.Página_do_Administrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div id="Corpo_Admi" style="text-align: center; height: 531px;">

        
          <span class="auto-style4" style="font-size: xx-large"><strong><em>Bem Vindo à Página do Administrativa</em></strong></span></div>

    
             <div id="menu_Admi">
                    
                 <div id="dentro_menu_Admi">
                     <br />
                     <br />
            <br />

                     <a href="PáginadoAdministrador.aspx" class="link"><asp:Label ID="Label11" runat="server" Text="..................Inicio..................." style="color: #FFFFFF"></asp:Label></a>
                     <br />
                     <a href="Area_Aluno.aspx" class="link"><asp:Label ID="Label12" runat="server" Text="..............Área Aluno..............." style="color: #FFFFFF"></asp:Label></a>
            <br />
                 <a href="Area_Usuario.aspx" class="link">    <asp:Label ID="Label16" runat="server" style="color: #FFFFFF; font-weight: 700" Text="............Area Usuario............"></asp:Label></a>
                     <br />
                     <a href="Área_Professor.aspx" class="link"><asp:Label ID="Label13" runat="server" Text="...........Área Professor..........." style="color: #FFFFFF"></asp:Label></a>
            <br />
                     <a href="Área_de_Pauta.aspx" class="link"><asp:Label ID="Label14" runat="server" Text="...........Área de Pautas..........." style="color: #FFFFFF"></asp:Label></a>
            <br />
                     <a href="Area_Uniforme.aspx" class="link"><asp:Label ID="Label15" runat="server" Text="..........Área de Uniforme........" style="color: #FFFFFF"></asp:Label></a>
                   
                   
                  </div>

             </div>


</asp:Content>
