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
    public partial class Cadastro_Professor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Enviar_CV_Click(object sender, EventArgs e)
        {
            Cls_Professor Obj_Currilo = new Cls_Professor();
            string Nome;
            string NBI;
            Nome = txtNome_Prof.Text;
            NBI = txt_NBI_Prof.Text;
            var caminho = Server.MapPath(@"Curríclus\");
            var NomeArquivo = FileUpload1.FileName;
            var caminhoCompleto = caminho + NomeArquivo;
            FileUpload1.PostedFile.SaveAs(caminhoCompleto);
            Obj_Currilo.Inserir_Professor(Nome, NBI, caminhoCompleto);

        }
    }
}