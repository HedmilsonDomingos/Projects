using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Camada_Modelo.App_Code
{
    class Estado_Civil
    {
        private string designacao;
        private int codigoEstadocivil;



        public string Designacao
        {

            set { designacao = value; }
            get { return designacao; }
        }


        public int CodigoEstadoCivil
        {

            set { codigoEstadocivil = value; }
            get { return codigoEstadocivil; }
        }


    }
}
