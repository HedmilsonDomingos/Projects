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
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            double a,b,c;
            a = double.Parse(textBox1.Text);
            b = double.Parse(textBox2.Text);

            if(radioButton1.Checked==true)
            {
                c = a + b;
                label4.Text = c.ToString();
            }
          else  if (radioButton2.Checked == true)
            {
                c = a - b;
                label4.Text = c.ToString();
            }
          else  if (radioButton3.Checked == true)
            {
                c = a * b;
                label4.Text = c.ToString();
            }
          else  if (radioButton4.Checked == true)
            {
                c = a / b;
                label4.Text = c.ToString();
            }
            else
            {
                MessageBox.Show("Please Make Your Choice");
                textBox1.Text = "";
                textBox2.Text = "";

            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            label4.Text = "0";
            textBox1.Text ="";
            textBox2.Text = "";
            radioButton1.Checked = false;
            radioButton2.Checked = false;
            radioButton3.Checked = false;
            radioButton4.Checked = false;

        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void radioButton4_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void radioButton3_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void Form2_Load(object sender, EventArgs e)
        {

        }

        private void textBox1_KeyPress(object sender, KeyPressEventArgs e)
        {
            if(char.IsNumber(e.KeyChar) || e.KeyChar =='.')
            {

            }
            else
            {
                e.Handled = e.KeyChar != (char)Keys.Back;
            }
        }

        private void textBox2_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (char.IsNumber(e.KeyChar) || e.KeyChar=='.' )
            {

            }
            else
            {
                e.Handled = e.KeyChar != (char)Keys.Back;
            }
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
