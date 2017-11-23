using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data;
using Camada_Modelo;

namespace PAP2
{
    public partial class Login_Administrodar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
      
        protected void Button2_Click(object sender, EventArgs e)
        {
            Usuario Verificar_Usuario = new Usuario();

          //  string Nome, Senha, Função;
          //  Nome = txt_Nome_Admi.Text;
         //   Senha = txt_Senha_Admi.Text;
         //   Função = dlp_Funcao.Text;
         //   Verificar_Usuario.Verificar(Nome, Senha, Função);
         //   Response.Redirect("Área Administrativa.aspx");
          
        }
    }
}