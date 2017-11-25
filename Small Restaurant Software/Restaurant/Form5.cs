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
    public partial class Form5 : Form
    {
        public Form5()
        {
            InitializeComponent();
            timer1.Start();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if(progressBar1.Value == progressBar1.Maximum)
            {
                timer1.Enabled = false;
                Form1 f1 = new Form1();
                this.Hide();
                f1.Show();
            }
            else
            {
                progressBar1.Value++;
                if(progressBar1.Value==48)
                {
                    label1.ForeColor = Color.Brown;
                    
                    label1.Text = "Done";
                }
            }
        }

        private void progressBar1_Click(object sender, EventArgs e)
        {

        }

        private void Form5_Load(object sender, EventArgs e)
        {

        }
    }
}
