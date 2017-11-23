using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using Camada_Modelo;

namespace PAP2
{
    public partial class Página_de_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Usuario Obj_Verificador = new Usuario();


             string Nome, Codigo;
             Nome = txtNome_Aluno.Text;
             Codigo = txt_Senha_Aluno.Text;
             Obj_Verificador.Verificar(Nome, Codigo);
             Response.Redirect("Perfil_Aluno.aspx");
            


         //   if (txtNome_Aluno.Text != "" && txt_Senha_Aluno.Text != "")
         //   {
                //if (Obj_Verificador.Verificar(txtNome_Aluno.Text, txt_Senha_Aluno.Text))
               // {
               //     Response.Redirect("Perfil_Aluno_Manha.aspx");
              //  }

         //   }
                     
        }
    }
}

//if (txtNome_Aluno.Text == "Aluno" && txt_Senha_Aluno.Text == "1234")
//{
//    Response.Redirect("Perfil_Aluno_Manha.aspx");
//}
//else
//{
//    Response.Write("O nome ou a senha do Aluno está Invalida ");
//}