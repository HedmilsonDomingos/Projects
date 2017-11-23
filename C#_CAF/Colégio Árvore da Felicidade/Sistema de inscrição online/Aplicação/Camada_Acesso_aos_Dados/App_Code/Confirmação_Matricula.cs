using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Camada_Modelo.App_Code
{
    class Confirmação_Matricula:Matricula
    {
        private string funcionario;
        private int numeroProcesso;
        private DateTime dataConfirmacao;


        public string Funcionarioo
        {

            set { funcionario = value; }
            get { return funcionario; }
        }


        public int NumeroProcesso
        {

            set { numeroProcesso = value; }
            get { return numeroProcesso; }
        }

        public DateTime DataConfirmacao
        {

            set { dataConfirmacao = value; }
            get { return dataConfirmacao; }
        }



    }
}
