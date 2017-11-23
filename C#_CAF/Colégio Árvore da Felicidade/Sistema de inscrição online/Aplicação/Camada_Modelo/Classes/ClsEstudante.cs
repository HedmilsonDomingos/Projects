using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using Camada_Acesso_aos_Dados;
using System.Windows.Forms;


namespace Camada_Modelo
{
    public class ClsEstudante
    {
        //*****************Este Metodo Para Inscriçao do Aluno*********************************
        public int inserirAluno(string Nome, string Nome_Completo, string Nome_Pai, string Nome_Mae, int Dia_Nasc, string Mes_Nasc, int Ano_Nasc, string Provincia, string Municipio, string Morada, int Telefone, string Email, string NBI, int Dia_Emissao, string Mes_Emissao, int Ano_Emissao, int Idade, string Curso, string Classe, string Genero, string Estado_Civil)
        {
            Conexao Obj_Aluno = new Conexao();
            SqlCommand cmd = new SqlCommand("Inseri_Aluno", Obj_Aluno.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Nome", Nome);
            cmd.Parameters.AddWithValue("@Nome_Completo", Nome_Completo);
            cmd.Parameters.AddWithValue("@Nome_Pai", Nome_Pai);
            cmd.Parameters.AddWithValue("@Nome_Mae", Nome_Mae);
            cmd.Parameters.AddWithValue("@Dia_Nasc", Dia_Nasc);
            cmd.Parameters.AddWithValue("@Mes_Nasc", Mes_Nasc);
            cmd.Parameters.AddWithValue("@Ano_Nasc", Ano_Nasc);
            cmd.Parameters.AddWithValue("@Provincia", Provincia);
            cmd.Parameters.AddWithValue("@Municipio", Municipio);
            cmd.Parameters.AddWithValue("@Morada", Morada);
            cmd.Parameters.AddWithValue("@Telefone", Telefone);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@NBI", NBI);
            cmd.Parameters.AddWithValue("@Dia_Emissao", Dia_Emissao);
            cmd.Parameters.AddWithValue("@Mes_Emissao", Mes_Emissao);
            cmd.Parameters.AddWithValue("@Ano_Emissao", Ano_Emissao);
            cmd.Parameters.AddWithValue("@Idade", Idade);
            cmd.Parameters.AddWithValue("@Curso", Curso);
            cmd.Parameters.AddWithValue("@Classe", Classe);
            cmd.Parameters.AddWithValue("@Genero", Genero);
            cmd.Parameters.AddWithValue("@Estado_Civil", Estado_Civil);
            try
            {
                int Linhas;
                Linhas = cmd.ExecuteNonQuery();
                return Linhas;
            }
            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }

            finally
            {
                Obj_Aluno.fecharConexao();
            }
        }
        //**************************Este Metodo é para Matricular Um Estudante
        public int Matricula_Estudante(int Dia_Matricula, string Mes_Matricula,int Ano_Matricula, int Codigo_Estudante,int Codigo_Turma)
        {
            Conexao Obj_Matricula_Estudante = new Conexao();

            SqlCommand cmd = new SqlCommand("Matricular_Estudante", Obj_Matricula_Estudante.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Dia", Dia_Matricula);
            cmd.Parameters.AddWithValue("@Mes", Mes_Matricula);
            cmd.Parameters.AddWithValue("@Ano", Ano_Matricula);
            cmd.Parameters.AddWithValue("@Id_Estudante", Codigo_Estudante);
            cmd.Parameters.AddWithValue("@Id_Turma", Codigo_Turma);
            try
            {
                int Linhas;
                Linhas = cmd.ExecuteNonQuery();
                return Linhas;
            }
            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }
            finally
            {
                Obj_Matricula_Estudante.fecharConexao();
            }
        }
//**********************Este Método é Para Confirmação**************************************

        public int Confirmacao_Estudante(int Dia_Conf, string Mes_Conf, int Ano_Conf, int Codigo_Matricula)
        {
            Conexao Obj_Confirmacao_Estudante = new Conexao();
            SqlCommand cmd = new SqlCommand("Confirmar_Estudante", Obj_Confirmacao_Estudante.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Dia", Dia_Conf);
            cmd.Parameters.AddWithValue("@Mes", Mes_Conf);
            cmd.Parameters.AddWithValue("@Ano", Ano_Conf);
            cmd.Parameters.AddWithValue("@Codigo_Matrcula", Codigo_Matricula);
            try
            {
                int Linhas;
                Linhas = cmd.ExecuteNonQuery();
                return Linhas;
            }
            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }
            finally
            {
                Obj_Confirmacao_Estudante.fecharConexao();
            }
        }

//*****************Este Metodo é para Inserir Turma*****************************************

        public int Inserir_Turma(string Descricao)
        {
            Conexao Obj_inserirTurma = new Conexao();
            SqlCommand cmd = new SqlCommand("Inserir_Turma", Obj_inserirTurma.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Designacao", Descricao);
            try
            {
                int Linhas;
                Linhas = cmd.ExecuteNonQuery();
                return Linhas;
            }
            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }
            finally
            {
                Obj_inserirTurma.fecharConexao();
            }
        }

//**********************Este Método é Para Inserir Um Curso***************************

        public int Inserir_Curso(string Nome_Curso)
        {
            Conexao Obj_inserir_Curso = new Conexao();
            SqlCommand cmd = new SqlCommand("Inseri_Curso", Obj_inserir_Curso.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Curso", Nome_Curso);
            try
            {
                int Linhas;
                Linhas = cmd.ExecuteNonQuery();
                return Linhas;
            }

            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }
            finally
            {
                Obj_inserir_Curso.fecharConexao();
            }
        }              

        //*****************Este Metodo é para Inserir Sala*********************************

        public int Inserir_Sala(int Numero_da_Sala)
        {
            Conexao Obj_inserir_Sala = new Conexao();
            SqlCommand cmd = new SqlCommand("Inseri_Sala", Obj_inserir_Sala.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Numero", Numero_da_Sala);
            try
            {
                int Linhas;
                Linhas = cmd.ExecuteNonQuery();
                return Linhas;
            }
            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }
            finally
            {
                Obj_inserir_Sala.fecharConexao();
            }
        }
//**********************Este Metodo é Para Inserir Periodo******************************
        public int Inserir_Periodo(string Periodo)
        {
            Conexao Obj_inserir_Periodo = new Conexao();
            SqlCommand cmd = new SqlCommand("Inserir_Periodo", Obj_inserir_Periodo.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Periodo", Periodo);
            try
            {
                int Linhas;
                Linhas = cmd.ExecuteNonQuery();
                return Linhas;
            }

            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }
            finally
            {
                Obj_inserir_Periodo.fecharConexao();
            }
        }

        public int Inserir_Disciplina(string Descricao)
        {
            Conexao Obj_inserir_Disciplina = new Conexao();
            SqlCommand cmd = new SqlCommand("Inserir_Disciplina", Obj_inserir_Disciplina.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Designacao", Descricao);
            try
            {
                int Linhas;
                Linhas = cmd.ExecuteNonQuery();
                return Linhas;
            }
            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }
            finally
            {
                Obj_inserir_Disciplina.fecharConexao();
            }
        }
        //*****************Este Metodo é para Eliminar Um Periodo *********************************

        public int Eliminar_Periodo(int id)
        {

            Conexao Obj_Eliminar_Periodo = new Conexao();
            SqlCommand cmd = new SqlCommand("Apagar_Periodo", Obj_Eliminar_Periodo.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.ExecuteNonQuery();
            try
            {
                int Linhas;
                Linhas = cmd.ExecuteNonQuery();
                return Linhas;
            }

            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }

            finally
            {
                Obj_Eliminar_Periodo.fecharConexao();
            }
        }

            //Este Método é para Eliminar uma sala
        public int Eliminar_Sala(int id)
        {

            Conexao Obj_Eliminar_Sala = new Conexao();
            SqlCommand cmd = new SqlCommand("Eliminar_Sala", Obj_Eliminar_Sala.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.ExecuteNonQuery();
            try
            {
                int Linhas;
                Linhas = cmd.ExecuteNonQuery();
                return Linhas;
            }

            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }

            finally
            {
                Obj_Eliminar_Sala.fecharConexao();
            }
        }

//----------------------Este método é para Eliminar um curso-------------------------------------
        public int Eliminar_Curso(int id)
        {

            Conexao Obj_Eliminar_Curso = new Conexao();
            SqlCommand cmd = new SqlCommand("Apagar_Curso", Obj_Eliminar_Curso.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.ExecuteNonQuery();
            try
            {
                int Linhas;
                Linhas = cmd.ExecuteNonQuery();
                return Linhas;
            }

            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }

            finally
            {
                Obj_Eliminar_Curso.fecharConexao();
            }
        }

//-------------------- Este metodo é para eliminar uma turma
        public int Eliminar_Turma(int id)
        {
            Conexao Obj_Eliminar_Turma = new Conexao();
            SqlCommand cmd = new SqlCommand("Apagar_Turma", Obj_Eliminar_Turma.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.ExecuteNonQuery();
            try
            {
                int Linhas;
                Linhas = cmd.ExecuteNonQuery();
                return Linhas;
            }
            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }
            finally
            {
                Obj_Eliminar_Turma.fecharConexao();
            }
        }
        public int Eliminar_Matricula(int id)
        {
            Conexao Obj_Eliminar_Matricula = new Conexao();
            SqlCommand cmd = new SqlCommand("Eliminar_Matricula", Obj_Eliminar_Matricula.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.ExecuteNonQuery();
            try
            {
                int Linhas;
                Linhas = cmd.ExecuteNonQuery();
                return Linhas;
            }

            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }
            finally
            {
                Obj_Eliminar_Matricula.fecharConexao();
            }
        }
        public int Eliminar_Inscrição(int id)
        {
            Conexao Obj_Eliminar_Inscrição = new Conexao();
            SqlCommand cmd = new SqlCommand("Apagar_Inscrição", Obj_Eliminar_Inscrição.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.ExecuteNonQuery();
            try
            {
                int Linhas;
                Linhas = cmd.ExecuteNonQuery();
                return Linhas;
            }

            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }
            finally
            {
                Obj_Eliminar_Inscrição.fecharConexao();
            }
        }
        public int Eliminar_Confirmacao(int id)
        {
            Conexao Obj_Eliminar_Confirmacao = new Conexao();
            SqlCommand cmd = new SqlCommand("Eliminar_Confirmacao", Obj_Eliminar_Confirmacao.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.ExecuteNonQuery();
            try
            {
                int Linhas;
                Linhas = cmd.ExecuteNonQuery();
                return Linhas;
            }

            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }

            finally
            {
                Obj_Eliminar_Confirmacao.fecharConexao();
            }
        }
        //*****************Este Metodo é para Actualizar Turma*********************************
        public int Actualizar_Turma(int Id, int Id_Classe, int Id_Periodo, int Id_Sala, int Id_Curso )
        {
            Conexao Obj_Actualizar_Turma = new Conexao();
            SqlCommand cmd = new SqlCommand("Actualizar_Turma", Obj_Actualizar_Turma.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id_Turma", Id);
            cmd.Parameters.AddWithValue("@Id_Classe", Id_Classe);
            cmd.Parameters.AddWithValue("@Id_Periodo", Id_Periodo);
            cmd.Parameters.AddWithValue("@Id_Sala", Id_Sala);
            cmd.Parameters.AddWithValue("@Id_Curso", Id_Curso);
            try
            {
                int Linhas;
                Linhas = cmd.ExecuteNonQuery();
                return Linhas;
            }
            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }
            finally
            {
                Obj_Actualizar_Turma.fecharConexao();
            }
        }
        //*****************Este Metodo é para Actualizar Estudante*********************************
        public int Actualizar_Estudante(int Id, int Id_Matricula)
        {
            Conexao Obj_Actualizar_Estudante = new Conexao();
            SqlCommand cmd = new SqlCommand("Actualizar_Matricula_Estudante", Obj_Actualizar_Estudante.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id_Estudante", Id);
            cmd.Parameters.AddWithValue("@Id_Matricula", Id_Matricula);
            try
            {
                int Linhas;
                Linhas = cmd.ExecuteNonQuery();
                return Linhas;
            }
            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }
            finally
            {
                Obj_Actualizar_Estudante.fecharConexao();
            }
        }
        //*****************Este Metodo é para Actualizar Matricula*********************************
        public int Actualizar_Matricula(int Id, int Id_Turma)
        {
            Conexao Obj_Actualizar_Matricula = new Conexao();
            SqlCommand cmd = new SqlCommand("Actualizar_Matricula", Obj_Actualizar_Matricula.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id_Matrcula", Id);
            cmd.Parameters.AddWithValue("@Id_Turma", Id_Turma);
            try
            {
                int Linhas;
                Linhas = cmd.ExecuteNonQuery();
                return Linhas;
            }
            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }
            finally
            {
                Obj_Actualizar_Matricula.fecharConexao();
            }
        }
        //**************************Este Metodo é para o Pagamento do Estudante
        public int Pagamento_Estudante(int Dia_Pagamento, string Mes_Pagamento, int Ano_Pagamento, decimal Valor, int Numero_Borderom, string Banco)
        {
            Conexao Obj_Pagamento_Estudante = new Conexao();

            SqlCommand cmd = new SqlCommand("Pagamento_Aluno", Obj_Pagamento_Estudante.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Dia", Dia_Pagamento);
            cmd.Parameters.AddWithValue("@Mes", Mes_Pagamento);
            cmd.Parameters.AddWithValue("@Ano", Ano_Pagamento);
            cmd.Parameters.AddWithValue("@Valor", Valor);
            cmd.Parameters.AddWithValue("@Numero_Borderom", Numero_Borderom);
            cmd.Parameters.AddWithValue("@Banco", Banco);
            try
            {
                int Linhas;
                Linhas = cmd.ExecuteNonQuery();
                return Linhas;
            }
            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }
            finally
            {
                Obj_Pagamento_Estudante.fecharConexao();
            }
        }
 
    }
}
