using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Camada_Modelo.App_Code
{
    class Tipo_Pagamento
    {
        private int codigoTipoPagamento;
        private string designacao;
        private int valor;

        public string Designacao
        {
            get { return designacao; }
            set { designacao = value; }
        }

        public int Valor
        {
            get { return valor; }
            set { valor = value; }
        }
        
    }
}
