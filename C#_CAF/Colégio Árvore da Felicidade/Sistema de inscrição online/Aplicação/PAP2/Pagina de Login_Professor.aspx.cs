using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Camada_Modelo;

namespace PAP2
{
    public partial class Pagina_de_Login_Professor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Usuario Obj_Verificador = new Usuario();

            //if (txt_Nome_Professor.Text != "" && txt_Senha_Professor.Text != "" && Dpl_Turno_Login.Text == "Manhã")
            //{
            //    if (Obj_Verificador.Verificar(txt_Nome_Professor.Text, txt_Senha_Professor.Text))
            //    {
            //        Response.Redirect("Perfíl_Prof_Manhã.aspx");

            //    }

            //    if (txt_Nome_Professor.Text != "" && txt_Senha_Professor.Text != "" && Dpl_Turno_Login.Text == "Tarde")
            //    {
            //        if (Obj_Verificador.Verificar(txt_Nome_Professor.Text, txt_Senha_Professor.Text))
            //        {
            //            Response.Redirect("Perfil_Prof_Tarde.aspx");

            //        }

            //    }
            }


        }
    }
