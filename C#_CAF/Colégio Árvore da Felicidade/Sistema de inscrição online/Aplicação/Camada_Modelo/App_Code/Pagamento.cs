using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Camada_Modelo.App_Code
{
    class Pagamento
    {
        private int codigoPagamento, valorEntregue, troco, disconto, numeroBorderom;
        private string designacao;
        private DateTime dataPagamento;


        public int CodigoPagamento
        {

            set { codigoPagamento = value; }
            get { return codigoPagamento; }
        }
        public string Designacao
        {

            set { designacao = value; }
            get { return designacao; }
        }

        public int ValorEntregue
        {

            set { valorEntregue = value; }
            get { return valorEntregue; }
        }

        public int Troco
        {

            set { troco = value; }
            get { return troco; }
        }
        public int Disconto
        {

            set { disconto = value; }
            get { return disconto; }
        }

        public DateTime DataPagamento
        {

            set { dataPagamento = value; }
            get { return dataPagamento; }
        }

        public int NumeroBorderom
        {

            set { numeroBorderom = value; }
            get { return numeroBorderom; }
        }

    }
}
