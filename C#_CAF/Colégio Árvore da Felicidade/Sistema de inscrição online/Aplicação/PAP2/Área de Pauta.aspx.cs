using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PAP2
{
    public partial class Área_de_Pauta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnm_Visualiza_Pauta_Manha_Adm_Click(object sender, EventArgs e)
        {
            string Localizacao_BD = @"Data Source=HP\SQLEXPRESS;Initial Catalog=BD_Principal;Integrated Security=True";
            SqlConnection Conexao = new SqlConnection(Localizacao_BD);
            Conexao.Open();

            if (dpl_Classe__Pauta_Manha_Visiuliza_Adm.Text == "Pre")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Pre", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Pre", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridV_Pauta_Manha_Adm.DataSource = Dados;
                GridV_Pauta_Manha_Adm.DataBind();
            }

            if (dpl_Classe__Pauta_Manha_Visiuliza_Adm.Text == "1ª")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Primera", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Primera", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridV_Pauta_Manha_Adm.DataSource = Dados;
                GridV_Pauta_Manha_Adm.DataBind();
            }

            if (dpl_Classe__Pauta_Manha_Visiuliza_Adm.Text == "2ª")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Segunda", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Segunda", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridV_Pauta_Manha_Adm.DataSource = Dados;
                GridV_Pauta_Manha_Adm.DataBind();
            }

            if (dpl_Classe__Pauta_Manha_Visiuliza_Adm.Text == "3ª")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Tercera", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Tercera", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridV_Pauta_Manha_Adm.DataSource = Dados;
                GridV_Pauta_Manha_Adm.DataBind();
            }

            if (dpl_Classe__Pauta_Manha_Visiuliza_Adm.Text == "4ª")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Quarta", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Quarta", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridV_Pauta_Manha_Adm.DataSource = Dados;
                GridV_Pauta_Manha_Adm.DataBind();
            }

            if (dpl_Classe__Pauta_Manha_Visiuliza_Adm.Text == "5ª")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Quinta", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Quinta", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridV_Pauta_Manha_Adm.DataSource = Dados;
                GridV_Pauta_Manha_Adm.DataBind();
            }

            if (dpl_Classe__Pauta_Manha_Visiuliza_Adm.Text == "6ª")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Sexta", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Sexta", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridV_Pauta_Manha_Adm.DataSource = Dados;
                GridV_Pauta_Manha_Adm.DataBind();
            }
            if (dpl_Classe__Pauta_Manha_Visiuliza_Adm.Text == "7ª")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Setima", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Setima", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridV_Pauta_Manha_Adm.DataSource = Dados;
                GridV_Pauta_Manha_Adm.DataBind();
            }
            if (dpl_Classe__Pauta_Manha_Visiuliza_Adm.Text == "8ª")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Oitava", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Oitava", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridV_Pauta_Manha_Adm.DataSource = Dados;
                GridV_Pauta_Manha_Adm.DataBind();
            }
            if (dpl_Classe__Pauta_Manha_Visiuliza_Adm.Text == "9ª")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Nona", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Nona", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridV_Pauta_Manha_Adm.DataSource = Dados;
                GridV_Pauta_Manha_Adm.DataBind();
            }
        }

        protected void btn_Ver_Pauta_Ensino_Medio_Adm_Click(object sender, EventArgs e)
        {
            string Localizacao_BD = @"Data Source=HP\SQLEXPRESS;Initial Catalog=BD_Principal;Integrated Security=True";
            SqlConnection Conexao = new SqlConnection(Localizacao_BD);
            Conexao.Open();

            if (DplClasse_Pauta_Adm.Text == "10ª" && DplCurso_Pauta_Adm.Text == "Eletrónica e Telecom")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Decima_Electro", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Decima_Electro", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridV_Pauta_Ensino_Medio_Adm.DataSource = Dados;
                GridV_Pauta_Ensino_Medio_Adm.DataBind();
            }

            if (DplClasse_Pauta_Adm.Text == "11ª" && DplCurso_Pauta_Adm.Text == "Eletrónica e Telecom")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Decima_Primera_Electro", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Decima_Primera_Electro", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridV_Pauta_Ensino_Medio_Adm.DataSource = Dados;
                GridV_Pauta_Ensino_Medio_Adm.DataBind();
            }

            if (DplClasse_Pauta_Adm.Text == "12ª" && DplCurso_Pauta_Adm.Text == "Eletrónica e Telecom")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Decima_Segunda_Electro", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Decima_Segunda_Electro", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridV_Pauta_Ensino_Medio_Adm.DataSource = Dados;
                GridV_Pauta_Ensino_Medio_Adm.DataBind();
            }


             if (DplClasse_Pauta_Adm.Text == "10ª" && DplCurso_Pauta_Adm.Text == "Informática")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Decima_Infor", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Decima_Infor", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridV_Pauta_Ensino_Medio_Adm.DataSource = Dados;
                GridV_Pauta_Ensino_Medio_Adm.DataBind();
            }

            if (DplClasse_Pauta_Adm.Text == "11ª" && DplCurso_Pauta_Adm.Text == "Informática")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Decima_Primera_Infor", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Decima_Primera_Infor", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridV_Pauta_Ensino_Medio_Adm.DataSource = Dados;
                GridV_Pauta_Ensino_Medio_Adm.DataBind();
            }

            if (DplClasse_Pauta_Adm.Text == "12ª" && DplCurso_Pauta_Adm.Text == "Informática")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Decima_Segunda_Infor", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Decima_Segunda_Infor", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridV_Pauta_Ensino_Medio_Adm.DataSource = Dados;
                GridV_Pauta_Ensino_Medio_Adm.DataBind();
            }
            
             if (DplClasse_Pauta_Adm.Text == "10ª" && DplCurso_Pauta_Adm.Text == "Ciências Físicas Biológicas")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Decima_Puniv", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Decima_Puniv", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridV_Pauta_Ensino_Medio_Adm.DataSource = Dados;
                GridV_Pauta_Ensino_Medio_Adm.DataBind();
            }

            if (DplClasse_Pauta_Adm.Text == "11ª" && DplCurso_Pauta_Adm.Text == "Ciências Físicas Biológicas")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Decima_Primera_Puniv", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Decima_Primera_Puniv", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridV_Pauta_Ensino_Medio_Adm.DataSource = Dados;
                GridV_Pauta_Ensino_Medio_Adm.DataBind();
            }

            if (DplClasse_Pauta_Adm.Text == "12ª" && DplCurso_Pauta_Adm.Text == "Ciências Físicas Biológicas")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Decima_Segunda_Puniv", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Decima_Segunda_Puniv", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridV_Pauta_Ensino_Medio_Adm.DataSource = Dados;
                GridV_Pauta_Ensino_Medio_Adm.DataBind();
            }

        }

        }
          
    }
