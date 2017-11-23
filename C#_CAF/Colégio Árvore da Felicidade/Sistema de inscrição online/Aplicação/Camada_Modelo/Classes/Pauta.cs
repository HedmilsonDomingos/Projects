using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Data.Sql;
using Camada_Acesso_aos_Dados;
using System.Threading.Tasks;

namespace Camada_Modelo
{
   public class Pauta
    {

      
       public void Inseri_Pauta_Pre(string Nome_Aluno, string Tipo, string Descrição, string Disciplina, string Classe, int Nota)
        {

            Conexao Obj_Dados_Pauta = new Conexao();
            SqlCommand cmd = new SqlCommand("Inseri_Pauta_Pre", Obj_Dados_Pauta.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Nome", Nome_Aluno);
            cmd.Parameters.AddWithValue("@Tipo", Tipo);
            cmd.Parameters.AddWithValue("@Descrição", Descrição);
            cmd.Parameters.AddWithValue("@Disciplina", Disciplina);
            cmd.Parameters.AddWithValue("@Classe", Classe);
            cmd.Parameters.AddWithValue("@Nota ", Nota);           
            
            try
            {
                cmd.ExecuteNonQuery();
            }

            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }

            finally
            {
                Obj_Dados_Pauta.fecharConexao();
            }

        }
        //*****************Este Metodo é para Inserir Um Estudante da Quinta*********************************



//------+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++--------

       //----------------------------Este Médoto nos permitir Apagar a nota de estudante da PRE------------------------------------
        public void Apaga_Pauta_Pre(int Senha, string Classe)
        {

            Conexao Obj_Dados_Pauta = new Conexao();
            SqlCommand cmd = new SqlCommand("Apaga_Nota_Pre", Obj_Dados_Pauta.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", Senha);
            cmd.Parameters.AddWithValue("@Classe", Classe);                                             
            try
            {
                cmd.ExecuteNonQuery(); ;
            }
            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }

            finally
            {
                Obj_Dados_Pauta.fecharConexao();
            }
        }
        //--------------Este Metodo é para Apaga a nota de estudante da  Primera---------------------

        public void Apaga_Pauta_Primera(int Senha, string Classe)
        {
            Conexao Obj_Dados_Pauta = new Conexao();
            SqlCommand cmd = new SqlCommand("Apaga_Nota_Primera", Obj_Dados_Pauta.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", Senha);
            cmd.Parameters.AddWithValue("@Classe", Classe);            
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }
            finally
            {
                Obj_Dados_Pauta.fecharConexao();
            }
        }

        //**************************Este Metodo é para Apaga a nota de estudante da Segunda*************************
        public void Apaga_Pauta_Segunda(int Senha, string Classe)
        {

            Conexao Obj_Dados_Pauta = new Conexao();
            SqlCommand cmd = new SqlCommand("Apaga_Nota_Segunda", Obj_Dados_Pauta.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", Senha);
            cmd.Parameters.AddWithValue("@Classe", Classe);
         
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }

            finally
            {
                Obj_Dados_Pauta.fecharConexao();
            }
        }

        //*****************Este Metodo é para Apaga a nota de estudante da Tercera*********************************

        public void Apaga_Pauta_Tercera(int Senha, string Classe)
        {
            Conexao Obj_Dados_Pauta = new Conexao();
            SqlCommand cmd = new SqlCommand("Apaga_Nota_Tercera", Obj_Dados_Pauta.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", Senha);
            cmd.Parameters.AddWithValue("@Classe", Classe);        
            try
            {
                cmd.ExecuteNonQuery();
            }

            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }

            finally
            {
                Obj_Dados_Pauta.fecharConexao();
            }
        }
        //*****************Este Metodo é para Apaga a nota de estudante da Quarta*********************************

        public void Apaga_Pauta_Quarta(int Senha, string Classe)
        {

            Conexao Obj_Dados_Pauta = new Conexao();
            SqlCommand cmd = new SqlCommand("Apaga_Nota_Quarta", Obj_Dados_Pauta.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", Senha);
            cmd.Parameters.AddWithValue("@Classe", Classe);
           try
            {
              
             cmd.ExecuteNonQuery();
               
            }
            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }
            finally
            {
                Obj_Dados_Pauta.fecharConexao();
            }
        }
        //*****************Este Metodo é para Apaga a nota de estudante da Quinta*********************************
        public void Apaga_Pauta_Quinta(int Senha, string Classe)
        {

            Conexao Obj_Dados_Pauta = new Conexao();
            SqlCommand cmd = new SqlCommand("Apaga_Nota_Quinta", Obj_Dados_Pauta.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", Senha);
            cmd.Parameters.AddWithValue("@Classe", Classe);
            try
            {
           
          cmd.ExecuteNonQuery();
 
            }

            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }

            finally
            {
                Obj_Dados_Pauta.fecharConexao();
            }
        }


        //*****************Este Metodo é para Apaga a nota de estudante da Sexta*********************************

        public void Apaga_Pauta_Sexta(int Senha, string Classe)
        {

            Conexao Obj_Dados_Pauta = new Conexao();
            SqlCommand cmd = new SqlCommand("Apaga_Nota_Sexta", Obj_Dados_Pauta.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", Senha);
            cmd.Parameters.AddWithValue("@Classe", Classe);
            try
            {
                 cmd.ExecuteNonQuery();
             
            }

            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }

            finally
            {
                Obj_Dados_Pauta.fecharConexao();
            }
        }


        //*****************Este Metodo é para Apaga a nota de estudante da Setima*********************************

        public void Apaga_Pauta_Setima(int Senha, string Classe)
        {

            Conexao Obj_Dados_Pauta = new Conexao();
            SqlCommand cmd = new SqlCommand("Remove_Nota_Setima", Obj_Dados_Pauta.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", Senha);
            cmd.Parameters.AddWithValue("@Classe", Classe);
            try
            {
                cmd.ExecuteNonQuery();
            }

            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }

            finally
            {
                Obj_Dados_Pauta.fecharConexao();
            }
        }
       
        //*****************Este Metodo é para Apaga a nota de estudante da Oitava*********************************

        public void Apaga_Pauta_Oitava(int Senha, string Classe)
        {

            Conexao Obj_Dados_Pauta = new Conexao();
            SqlCommand cmd = new SqlCommand("Apaga_Nota_Oitava", Obj_Dados_Pauta.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", Senha);
            cmd.Parameters.AddWithValue("@Classe", Classe);
            try
            {

              cmd.ExecuteNonQuery();

            }

            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }

            finally
            {
                Obj_Dados_Pauta.fecharConexao();
            }
        }

        //*****************Este Metodo é para Apaga a nota de estudante da Nona*********************************

        public void Apaga_Pauta_Nona(int Senha, string Classe)
        {

            Conexao Obj_Dados_Pauta = new Conexao();
            SqlCommand cmd = new SqlCommand("Apaga_Nota_Nona", Obj_Dados_Pauta.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", Senha);
            cmd.Parameters.AddWithValue("@Classe", Classe);
            try
            {
            
               cmd.ExecuteNonQuery();
             
            }

            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }

            finally
            {
                Obj_Dados_Pauta.fecharConexao();
            }
        }

        //*****************Este Metodo é para Apaga a nota de estudante da Decima Puniv*********************************

        public void Apaga_Pauta_Decima_Puniv(int Senha, string Classe, string Curso)
        {

            Conexao Obj_Dados_Pauta = new Conexao();
            SqlCommand cmd = new SqlCommand("Apaga_Nota_Decima_Puniv", Obj_Dados_Pauta.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", Senha);
            cmd.Parameters.AddWithValue("@Classe", Classe);
            cmd.Parameters.AddWithValue("@Curso", Curso);
            try
            {
             cmd.ExecuteNonQuery();
           }

            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }

            finally
            {
                Obj_Dados_Pauta.fecharConexao();
            }
        }

        //*****************Este Metodo é para Apaga a nota de estudante da Decima Primera Puniv*********************************

        public void Apaga_Pauta_Decima_Primera_Puniv(int Senha, string Classe, string Curso)
        {
            Conexao Obj_Dados_Pauta = new Conexao();
            SqlCommand cmd = new SqlCommand("Apaga_Nota_Primera_Puniv", Obj_Dados_Pauta.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", Senha);
            cmd.Parameters.AddWithValue("@Classe", Classe);
            cmd.Parameters.AddWithValue("@Curso", Curso);
            try
            {
          cmd.ExecuteNonQuery();
            }

            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }

            finally
            {
                Obj_Dados_Pauta.fecharConexao();
            }
        }

        //*****************Este Metodo é para Apaga a nota de estudante da Decima Segunda Puniv*********************************

        public void Apaga_Pauta_Decima_Segunda_Puniv(int Senha, string Classe, string Curso)
        {

            Conexao Obj_Dados_Pauta = new Conexao();
            SqlCommand cmd = new SqlCommand("Apaga_Nota_Segunda_puniv", Obj_Dados_Pauta.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", Senha);
            cmd.Parameters.AddWithValue("@Classe", Classe);
            cmd.Parameters.AddWithValue("@Curso", Curso);
            try
            {
           cmd.ExecuteNonQuery();
        
            }

            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }

            finally
            {
                Obj_Dados_Pauta.fecharConexao();
            }
        }
         //*****************Este Metodo é para Apaga a nota de estudante da Decima Informatica*********************************

        public void Apaga_Pauta_Decima_Informatica(int Senha, string Classe, string Curso)
        {

            Conexao Obj_Dados_Pauta = new Conexao();
            SqlCommand cmd = new SqlCommand("Apaga_Nota_Decima_Infor", Obj_Dados_Pauta.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", Senha);
            cmd.Parameters.AddWithValue("@Classe", Classe);
            cmd.Parameters.AddWithValue("@Curso", Curso);
            try
            {
              cmd.ExecuteNonQuery();          
            }

            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }

            finally
            {
                Obj_Dados_Pauta.fecharConexao();
            }
        }
           //*****************Este Metodo é para Apaga a nota de estudante da Decima Primera Infotmatica*********************************

        public void Apaga_Pauta_Decima_Primera_Informatica(int Senha, string Classe, string Curso)
        {
            Conexao Obj_Dados_Pauta = new Conexao();
            SqlCommand cmd = new SqlCommand("Apaga_Nota_Decima_Primera_Infor", Obj_Dados_Pauta.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", Senha);
            cmd.Parameters.AddWithValue("@Classe", Classe);
            cmd.Parameters.AddWithValue("@Curso", Curso);
            try
            {
           cmd.ExecuteNonQuery();
        
            }

            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }

            finally
            {
                Obj_Dados_Pauta.fecharConexao();
            }
        }

        //*****************Este Metodo é para Apaga a nota de estudante da Decima Segunda Informática*********************************

        public void Apaga_Pauta_Decima_Segunda_Informatica(int Senha, string Classe, string Curso)
        {
            Conexao Obj_Dados_Pauta = new Conexao();
            SqlCommand cmd = new SqlCommand("Apaga_Nota_Decima_Segunda_Infor", Obj_Dados_Pauta.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", Senha);
            cmd.Parameters.AddWithValue("@Classe", Classe);
            cmd.Parameters.AddWithValue("@Curso", Curso);
            try
            {
                       cmd.ExecuteNonQuery();
            }

            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }

            finally
            {
                Obj_Dados_Pauta.fecharConexao();
            }
        }
        //*****************Este Metodo é para Apaga a nota de estudante da Decima Electronica*********************************

        public void Apaga_Pauta_Decima_Electronica(int Senha, string Classe, string Curso)
        {
            Conexao Obj_Dados_Pauta = new Conexao();
            SqlCommand cmd = new SqlCommand("Apaga_Nota_Decima_Electro", Obj_Dados_Pauta.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", Senha);
            cmd.Parameters.AddWithValue("@Classe", Classe);
            cmd.Parameters.AddWithValue("@Curso", Curso);
            try
            {
            cmd.ExecuteNonQuery();
           }

            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }

            finally
            {
                Obj_Dados_Pauta.fecharConexao();
            }
        }
        //*****************Este Metodo é para Apaga a nota de estudante da Decima Primera Electronica*********************************

        public void Apaga_Pauta_Decima_Primera_Electronica(int Senha, string Classe, string Curso)
        {
            Conexao Obj_Dados_Pauta = new Conexao();
            SqlCommand cmd = new SqlCommand("Apaga_Nota_Decima_Primera_Electro", Obj_Dados_Pauta.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", Senha);
            cmd.Parameters.AddWithValue("@Classe", Classe);
            cmd.Parameters.AddWithValue("@Curso", Curso);
            try
            {
         
                 cmd.ExecuteNonQuery();
  
            }

            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }

            finally
            {
                Obj_Dados_Pauta.fecharConexao();
            }
        }

        //*****************Este Metodo é para Apaga a nota de estudante da Decima Segunda Electronica*********************************

        public void Apaga_Pauta_Decima_Segunda_Electronica(int Senha, string Classe, string Curso)
        {
            Conexao Obj_Dados_Pauta = new Conexao();
            SqlCommand cmd = new SqlCommand("Apaga_NotaDecima_Segunda_Electro", Obj_Dados_Pauta.abreConexao());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", Senha);
            cmd.Parameters.AddWithValue("@Classe", Classe);
            cmd.Parameters.AddWithValue("@Curso", Curso);
            try
            {
            cmd.ExecuteNonQuery();
            
            }

            catch (SqlException erro)
            {
                throw new Exception("Erro encontrado" + erro.Message);
            }

            finally
            {
                Obj_Dados_Pauta.fecharConexao();
            }
      }


      
    }
}
