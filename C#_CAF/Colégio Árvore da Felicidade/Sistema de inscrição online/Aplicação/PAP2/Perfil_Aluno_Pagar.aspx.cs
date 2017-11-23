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
    public partial class Perfil_Aluno_Pagar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ClsEstudante obj_P_A = new ClsEstudante();

            int Dia_Pagamento;
            string Mes_Pagamento;
            int Ano_Pagamento;
            decimal Valor;
            int Numero_Borderom;
            string Banco;

            Dia_Pagamento = int.Parse(dpl_Dia_PagamentoAluno.Text);
            Mes_Pagamento = dpl_Mes_Pagamento_Aluno.Text;
            Ano_Pagamento = int.Parse(txt_Ano_Pagamento_Aluno.Text);
            Valor = int.Parse(txt_Valor_Pago.Text);
            Numero_Borderom = int.Parse(txt_N_Borderom_Pagamento.Text);
            Banco = dpl_Banco_Pagamento.Text;

            if (obj_P_A.Pagamento_Estudante(Dia_Pagamento, Mes_Pagamento, Ano_Pagamento, Valor, Numero_Borderom, Banco) == 1)
            {
                MessageBox.Show("O Pagamento foi efectuado");
            }

            else
            {
                MessageBox.Show("O Pagamento Falhou");
            }
        }

    }
}