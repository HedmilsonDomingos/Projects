using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Camada_Modelo.App_Code
{
    class Modo_Pagamento
    {
        private int codigoModoPagamento;
        private string designacao;


        public string Designacao
        {
            get { return designacao; }
            set { designacao = value; }
        }

        public int CodigoModoPagamento
        {
            get { return codigoModoPagamento; }
            set { codigoModoPagamento = value; }
        }
           
    }
}
