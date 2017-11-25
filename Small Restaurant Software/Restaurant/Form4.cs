using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Restaurant
{
    public partial class Form4 : Form
    {
        SqlConnection conn=new SqlConnection();
        public Form4()
        {
            InitializeComponent();
        }

        private void dataGridView4_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button11_Click(object sender, EventArgs e)
        {

        }

        private void button10_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=LENOVO-PC\SOHAIB;Initial Catalog=Restaurant;Integrated Security=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into Employee_table (name,password,phone_number) values('"+textBox4.Text+"', '"+textBox5.Text+"','"+textBox6.Text+"')",conn);
            cmd.ExecuteNonQuery();
            MessageBox.Show("The employee was added\nThank you");
            conn.Close();
        }

        private void button13_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=LENOVO-PC\SOHAIB;Initial Catalog=Restaurant;Integrated Security=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete from Employee_table where id=('" + textBox7.Text +  "')", conn);
            cmd.ExecuteNonQuery();
            MessageBox.Show("The employee was deleted\nThank you");
            conn.Close();
        }

        private void Form4_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=LENOVO-PC\SOHAIB;Initial Catalog=Restaurant;Integrated Security=True");

        }

        private void button5_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=LENOVO-PC\SOHAIB;Initial Catalog=Login;Integrated Security=True");
            conn.Open();
            SqlDataAdapter adp = new SqlDataAdapter("select * from Table_log ", conn);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            dataGridView2.DataSource = dt;
            conn.Close();
        }
            
            

        private void button6_Click(object sender, EventArgs e)
        {

        }

        private void button8_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=LENOVO-PC\SOHAIB;Initial Catalog=Login;Integrated Security=True");
            conn.Open();
            SqlDataAdapter adp = new SqlDataAdapter("select * from Table_log", conn);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            dataGridView1.DataSource = dt;
            conn.Close();
        }
    }
}
