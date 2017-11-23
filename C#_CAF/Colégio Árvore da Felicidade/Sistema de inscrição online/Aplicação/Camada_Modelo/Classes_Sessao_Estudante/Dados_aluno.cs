using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Threading.Tasks;

    public class Dados_aluno
    {
        public string NomeCompletoAluno { get; set; }
        public string CursoAluno { get; set; }
        public string ClasseAluno{get;set;}
        public int IdadeAluno { get; set; }

        public Dados_aluno(int NumeroProcesso)
        {
            string caminho = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Banco_de_Dados_Sistema_Inscrição_Online;Integrated Security=True";
            string AlunoID = "Select Id_Estudante From Estudante Where Id_Estudante = '" + NumeroProcesso + "'";
            string AlunoNome = "Select Nome_Completo From Estudante Where Id_Estudante = '" + NumeroProcesso + "'";
            string AlunoCurso = "Select Curso From Estudante Where Id_Estudante = '" + NumeroProcesso + "'";
            string AlunoIdade = "Select Idade From Estudante Where Id_Estudante = '" + NumeroProcesso + "'";

            SqlConnection conexao = new SqlConnection(caminho);
            SqlCommand ComandoIdAluno = new SqlCommand(AlunoID, conexao);
            SqlCommand ComandoNomeAluno = new SqlCommand(AlunoNome, conexao);
            SqlCommand ComandoCursoAluno = new SqlCommand(AlunoCurso, conexao);
            SqlCommand ComandoIdadeAluno = new SqlCommand(AlunoIdade, conexao);

            conexao.Open();
            this.NomeCompletoAluno = Convert.ToString(ComandoNomeAluno.ExecuteScalar());
            this.CursoAluno= Convert.ToString(ComandoCursoAluno.ExecuteScalar());
            this.ClasseAluno = Convert.ToString(ComandoCursoAluno.ExecuteScalar());
            this.IdadeAluno = Convert.ToInt32(ComandoIdadeAluno.ExecuteScalar());
        }

    
}
