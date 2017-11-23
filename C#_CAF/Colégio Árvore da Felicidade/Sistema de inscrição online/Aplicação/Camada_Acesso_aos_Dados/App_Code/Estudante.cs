using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace Camada_Modelo.App_Code
{
    class Estudante:Pessoa
    {
        
        private int codigoEstudante;

               
        public int CodigoEstudante
        {
            set { codigoEstudante = value; }
            get { return codigoEstudante; }
        }


        public void Salvar(int codigoEstudante)
        {
            //SqlCommand cmd = new SqlCommand("SalvarUsuario");
            //cmd.CommandType = CommandType.StoredProcedure;

            //cmd.Parameters.AddWithValue("@codigoEstudante", codigoEstudante);
            //cmd.ExecuteNonQuery();
        }

    }
}
