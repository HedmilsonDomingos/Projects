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
    public partial class Perfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Comprar_Uni_Aluno_Manha_Click(object sender, EventArgs e)
        {
            //ClsUniforme Comprar_Uniforme_Aluno_Manha = new ClsUniforme();

            //int Codigo_Estudante; string Tipo_do_Uniforme, Banco_Pago, Mes_da_Compra;
            //int Numero_Borderom, Dia_da_Compra, Ano_da_Compra;
            //decimal Valor_Pago;

            //Codigo_Estudante = int.Parse(txt_Codigo_Aluno_Compra_Uni.Text);
            //Valor_Pago = int.Parse(txt_Valor_Aluno_Manha.Text);
            //Tipo_do_Uniforme = txt_Descricao_Uniforme.Text;
            //Numero_Borderom = int.Parse(txt_Numero_BorderomAluno_Manha.Text);
            //Banco_Pago = dpl_BancoAluno_Manha.Text;
            //Dia_da_Compra = int.Parse(dpl_Dia_Comprar_Uniforme.Text);
            //Mes_da_Compra = dpl_Mes_Comprar_Uniforme.Text;
            //Ano_da_Compra = int.Parse(txt_Ano_Comprar_Uniforme.Text);
            //Numero_Borderom = int.Parse(txt_Numero_BorderomAluno_Manha.Text);

            //if (Comprar_Uniforme_Aluno_Manha.ComprarUniforme(Tipo_do_Uniforme, Numero_Borderom, Banco_Pago, Dia_da_Compra, Mes_da_Compra, Ano_da_Compra, Valor_Pago, Codigo_Estudante) == 1)
            //{
            //    MessageBox.Show("Compra efectuada");
            //}

            //else
            //{
            //    MessageBox.Show(" Compra Falhou");
            //}
                                
        }

        protected void btn_Ver_Click(object sender, EventArgs e)
        {
            //int Senha;
            //string Nome;
            //Nome = txt_Nome_Consulta.Text;
            //Senha=int.Parse(txt_Codigo_Consulta.Text);
            //string con = @"Data Source=HP\SQLEXPRESS;Initial Catalog=BD_Principal;Integrated Security=True";
            //SqlConnection Conexao = new SqlConnection(con);
            //Conexao.Open();
    
        }

        protected void btn_Compra_Click(object sender, EventArgs e)
        {
            //int Codigo_Estudante; string Tipo_do_Uniforme, Banco_Pago, Mes_da_Compra;
            //int Numero_Borderom,Dia_da_Compra,Ano_da_Compra;
            //decimal Valor_Pago;

            //         Codigo_Estudante = int.Parse(txt_Codigo_Aluno_Compra_Uni.Text);
            //         Valor_Pago = int.Parse(txt_Valor_Aluno_Manha.Text);
            //         Tipo_do_Uniforme = txt_Descricao_Uniforme.Text;
            //         Numero_Borderom = int.Parse( txt_Numero_BorderomAluno_Manha.Text);
            //         Banco_Pago = dpl_BancoAluno_Manha.Text;
            //         Dia_da_Compra = int.Parse(dpl_Dia_Comprar_Uniforme.Text);
            //         Mes_da_Compra = dpl_Mes_Comprar_Uniforme.Text;
            //         Ano_da_Compra = int.Parse(txt_Ano_Comprar_Uniforme.Text);
            //         Numero_Borderom =int.Parse(txt_Numero_BorderomAluno_Manha.Text);
            //         ClsUniforme Obj_Comprar = new ClsUniforme();
            //         Obj_Comprar.ComprarUniforme(Tipo_do_Uniforme,Numero_Borderom,Banco_Pago,Dia_da_Compra,Mes_da_Compra,Ano_da_Compra,Valor_Pago,Codigo_Estudante);
            //         Response.Write("Compra efectuada!");            
        }

        protected void btn_Limpar_Compra_Click(object sender, EventArgs e)
        {
             //txt_Codigo_Aluno_Compra_Uni.Text = "";
             //txt_Valor_Aluno_Manha.Text="";
             //txt_Descricao_Uniforme.Text = "";
             //txt_Numero_BorderomAluno_Manha.Text = "";
             //dpl_BancoAluno_Manha.Text = "";
             //dpl_Dia_Comprar_Uniforme.Text = "";
             //dpl_Mes_Comprar_Uniforme.Text = "";
             //txt_Ano_Comprar_Uniforme.Text = "";
             //txt_Numero_BorderomAluno_Manha.Text="";
        }

               protected void txt_Ano_UniformeAluno_Manha_TextChanged(object sender, EventArgs e)
        {

        }

               protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
               {
                   if (e.Row.RowType == DataControlRowType.DataRow)
                   {
                       e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='Silver'");

                       e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='white'");
                   }
               }

               protected void Button2_Click(object sender, EventArgs e)
               {
                   //ClsEstudante obj_P_A = new ClsEstudante();

                   //int Dia_Pagamento;
                   //string Mes_Pagamento;
                   //int Ano_Pagamento;
                   //decimal Valor;
                   //int Numero_Borderom;
                   //string Banco;

                   //Dia_Pagamento = int.Parse(dpl_Dia_PagamentoAluno.Text);
                   //Mes_Pagamento = dpl_Mes_Pagamento_Aluno.Text;
                   //Ano_Pagamento = int.Parse(txt_Ano_Pagamento_Aluno.Text);
                   //Valor = int.Parse(txt_Valor_Pago.Text);
                   //Numero_Borderom = int.Parse(txt_N_Borderom_Pagamento.Text); 
                   //Banco = dpl_Banco_Pagamento.Text;

                   //if (obj_P_A.Pagamento_Estudante( Dia_Pagamento, Mes_Pagamento, Ano_Pagamento, Valor, Numero_Borderom, Banco ) == 1)
                   //{
                   //    MessageBox.Show("O Pagamento foi efectuado");
                   //}

                   //else
                   //{
                   //    MessageBox.Show("O Pagamento Falhou");
                   //}
               }
    }
}