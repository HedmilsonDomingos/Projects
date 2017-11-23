using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PAP2
{
    public partial class Ver_Aluno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string con = @"Data Source=HP\SQLEXPRESS;Initial Catalog=BD_Principal;Integrated Security=True";
            SqlConnection Conexao = new SqlConnection(con);
            Conexao.Open();
            SqlCommand cmd = new SqlCommand("Selecionar_Todos_Alunos_Da_DecimaSegundaInfor", Conexao);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}