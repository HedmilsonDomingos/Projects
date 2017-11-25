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
    public partial class Form7 : Form
    {
        string inpute = string.Empty;  //string storing user input
        string operand1 = string.Empty; //string storing first opernd
        string operand2 = string.Empty; //string storing second operand
        char operation;                 // char for operation
        double result = 0.0;            //calculated result
        public Form7()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
       
            //textBox1.Text = 0.ToString();
            //textBox1.Text = textBox1.Text + 0;
             this.textBox1.Text = "";
            inpute += "0";
            this.textBox1.Text += inpute;
        }
        
        private void button1_MouseClick(object sender, MouseEventArgs e)
        {
       //    textBox1.Text = 0.ToString();
        }

        private void button2_MouseClick(object sender, MouseEventArgs e)
        {
          // textBox1.Text = 1.ToString();
        }

        private void button5_MouseClick(object sender, MouseEventArgs e)
        {
           // textBox1.Text = 2.ToString();
        }

        private void button11_MouseClick(object sender, MouseEventArgs e)
        {
      //      textBox1.Text = 3.ToString();
        }

        private void button10_MouseClick(object sender, MouseEventArgs e)
        {
        //    textBox1.Text = 4.ToString();
        }

        private void button9_MouseClick(object sender, MouseEventArgs e)
        {
        //    textBox1.Text = 5.ToString();
        }

        private void button8_MouseClick(object sender, MouseEventArgs e)
        {
        //    textBox1.Text = 6.ToString();
        }

        private void button14_MouseClick(object sender, MouseEventArgs e)
        {
        //    textBox1.Text = 7.ToString();
        }

        private void button13_MouseClick(object sender, MouseEventArgs e)
        {
         //   textBox1.Text = "8".ToString();
        }

        private void button12_MouseClick(object sender, MouseEventArgs e)
        {
           // textBox1.Text = 9.ToString();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
           /* if (textBox1.Text == 0.ToString())
            {
                textBox1.Text = 0.ToString();
            }
           else  if(textBox1.Text == 1.ToString())
            {
                textBox1.Text = 1.ToString();
            }
            else if (textBox1.Text == 2.ToString())
            {
                textBox1.Text = 2.ToString();
            }
            */
        }

        private void button2_Click(object sender, EventArgs e)
        {
            //int.Parse(textBox1.Text = 1.ToString());
            //textBox1.Text = textBox1.Text + 1;
            this.textBox1.Text = "";
            inpute += "1";
            this.textBox1.Text += inpute;
        }

        private void button5_Click(object sender, EventArgs e)
        {
            //textBox1.Text = textBox1.Text + 2;
            this.textBox1.Text = "";
            inpute += "2";
            this.textBox1.Text += inpute;
        }

        private void button14_Click(object sender, EventArgs e)
        {
            //textBox1.Text = textBox1.Text + 7;
            this.textBox1.Text="";
            inpute += "7";
            this.textBox1.Text += inpute;
           
        }

        private void button13_Click(object sender, EventArgs e)
        {
            // textBox1.Text = textBox1.Text + 8;
            this.textBox1.Text = "";
            inpute += "8";
            this.textBox1.Text += inpute;
        }

        private void button12_Click(object sender, EventArgs e)
        {
            //textBox1.Text = textBox1.Text + 9;
            this.textBox1.Text = "";
            inpute += "9";
            this.textBox1.Text += inpute;
        }

        private void button10_Click(object sender, EventArgs e)
        {
            //textBox1.Text = textBox1.Text + 4;
            this.textBox1.Text = "";
            inpute += "4";
            this.textBox1.Text += inpute;
        }

        private void button9_Click(object sender, EventArgs e)
        {
            //textBox1.Text = textBox1.Text + 5;
            this.textBox1.Text = "";
            inpute += "5";
            this.textBox1.Text += inpute;
        }

        private void button8_Click(object sender, EventArgs e)
        {
            // textBox1.Text = textBox1.Text + 6;
            this.textBox1.Text = "";
            inpute += "6";
            this.textBox1.Text += inpute;
        }

        private void button11_Click(object sender, EventArgs e)
        {
            // textBox1.Text = textBox1.Text + 3;
            this.textBox1.Text = "";
            inpute += "3";
            this.textBox1.Text += inpute;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            //textBox1.Text =textBox1.Text+".";
            this.textBox1.Text = "";
            inpute += ".";
            this.textBox1.Text = inpute;
        }

        private void button15_Click(object sender, EventArgs e)
        {
            // textBox1.Text = "";
            this.textBox1.Text = "";
            this.inpute = string.Empty;
            this.operand1 = string.Empty;
            this.operand2 = string.Empty;
            button6.BackColor= Color.PaleGoldenrod;
            button16.BackColor = Color.PaleGoldenrod;
            button17.BackColor = Color.PaleGoldenrod;
            button7.BackColor = Color.PaleGoldenrod;
            button4.BackColor = Color.PaleGoldenrod;

        }

        private void button6_Click(object sender, EventArgs e)
        {
            operand1 = inpute;
            operation = '+';
            inpute = string.Empty;
            button6.BackColor = Color.Orange;

        }

        private void button16_Click(object sender, EventArgs e)
        {
            operand1 = inpute;
            operation = '/';
            inpute = string.Empty;
            button16.BackColor = Color.Orange;

        }

        private void button17_Click(object sender, EventArgs e)
        {
            operand1 = inpute;
            operation = '*';
            inpute = string.Empty;
            button17.BackColor = Color.Orange;
        }

        private void button7_Click(object sender, EventArgs e)
        {
            operand1 = inpute;
            operation = '-';
            inpute = string.Empty;
            button7.BackColor = Color.Orange;
        }

        private void button4_Click(object sender, EventArgs e)
        {
      operand2 = inpute;
            double num1, num2;
            double.TryParse(operand1, out num1);
            double.TryParse(operand2, out num2);
             if (operation=='+')
            {
                result = num1 + num2;
                textBox1.Text = result.ToString();
            }
            else if(operation=='-')
            {
                result = num1 - num2;
                textBox1.Text = result.ToString();
            }
            else if(operation=='*')
            {
                result = num1 * num2;
                textBox1.Text = result.ToString();
            }
            else if(operation=='/')
            {
                if (num2 != 0)
                {
                    result = num1 / num2;
                    textBox1.Text = result.ToString();
                }
                else
                {
                    textBox1.Text = "DIV/Zero!";
                }
                    
            }
            button4.BackColor = Color.Orange;
            button6.BackColor = Color.PaleGoldenrod;
            button16.BackColor = Color.PaleGoldenrod;
            button17.BackColor = Color.PaleGoldenrod;
            button7.BackColor = Color.PaleGoldenrod;

        }
        
    }
}
