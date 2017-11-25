using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Restaurant
{
    public partial class login_adm : Form
    {
        public login_adm()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "sohaib" & textBox2.Text == "0000")
            {
                Form3 f3 = new Form3();
                this.Hide();
                f3.Show();
            }
            else if (textBox1.Text == "sohaib" & textBox2.Text == "1111")
            {
                Form4 f4 = new Form4();
                this.Hide();
                f4.Show();
            }
            else
            {
                MessageBox.Show("Username or password incorrect");
            }
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            Form6 f6 = new Form6();
            this.Hide();
           
            f6.Show();
        }

       
        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
