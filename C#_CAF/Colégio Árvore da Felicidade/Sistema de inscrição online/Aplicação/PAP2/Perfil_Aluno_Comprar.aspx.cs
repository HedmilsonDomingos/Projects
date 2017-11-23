using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Camada_Modelo;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using System.Windows.Forms;

namespace PAP2
{
    public partial class Perfil_Aluno_Comprar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Compra_Click(object sender, EventArgs e)
        {
            ClsUniforme Comprar_Uniforme_Aluno_Manha = new ClsUniforme();

            int Codigo_Estudante; string Tipo_do_Uniforme, Banco_Pago, Mes_da_Compra;
            int Numero_Borderom, Dia_da_Compra, Ano_da_Compra;
            decimal Valor_Pago;

            Codigo_Estudante = int.Parse(txt_Codigo_Aluno_Compra_Uni.Text);
            Valor_Pago = int.Parse(txt_Valor_Aluno_Manha.Text);
            Tipo_do_Uniforme = txt_Descricao_Uniforme.Text;
            Numero_Borderom = int.Parse(txt_Numero_BorderomAluno_Manha.Text);
            Banco_Pago = dpl_BancoAluno_Manha.Text;
            Dia_da_Compra = int.Parse(dpl_Dia_Comprar_Uniforme.Text);
            Mes_da_Compra = dpl_Mes_Comprar_Uniforme.Text;
            Ano_da_Compra = int.Parse(txt_Ano_compra_uniforme.Text);
            Numero_Borderom = int.Parse(txt_Numero_BorderomAluno_Manha.Text);

            if (Comprar_Uniforme_Aluno_Manha.ComprarUniforme(Tipo_do_Uniforme, Numero_Borderom, Banco_Pago, Dia_da_Compra, Mes_da_Compra, Ano_da_Compra, Valor_Pago, Codigo_Estudante) == 1)
            {
                MessageBox.Show("Compra efectuada");
            }

            else
            {
                MessageBox.Show(" Compra Falhou");
            }
        }

        protected void btn_Limpar_Compra_Click(object sender, EventArgs e)
        {
            txt_Codigo_Aluno_Compra_Uni.Text = "";
            txt_Valor_Aluno_Manha.Text = "";
            txt_Descricao_Uniforme.Text = "";
            txt_Numero_BorderomAluno_Manha.Text = "";
            dpl_BancoAluno_Manha.Text = "";
            dpl_Dia_Comprar_Uniforme.Text = "";
            dpl_Mes_Comprar_Uniforme.Text = "";
            txt_Ano_compra_uniforme.Text = "";
            txt_Numero_BorderomAluno_Manha.Text = "";
        }
    }
}