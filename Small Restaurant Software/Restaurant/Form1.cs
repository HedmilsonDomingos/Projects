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
    public partial class Form1 : Form
    {
        double a = 0;
      //  int b;
        public Form1()
        {
            InitializeComponent();
        }

       
        private void button1_Click(object sender, EventArgs e)
        {
            if (listBox1.SelectedItem != null)
            {
              if (listBox1.SelectedItem.ToString () == "Garden Side Salad	$1.49")
             
                {
                    a = a + 1.49;
                    listBox2.Items.Add(listBox1.SelectedItem);
                    textBox4.Text = a.ToString();
                }


                else if (listBox1.SelectedItem.ToString () == "Caesar Side Salad	$1.49")
                {
                    a = a + 1.49;
                    listBox2.Items.Add(listBox1.SelectedItem);
                    textBox4.Text = a.ToString();
                }
                else if (listBox1.SelectedItem.ToString () == "Apple Slices	$.99")
                {
                    a = a + 0.99;
                    listBox2.Items.Add(listBox1.SelectedItem);
                    textBox4.Text = a.ToString();
                }
                else if (listBox1.SelectedItem.ToString () == "Plain Baked Potato $1.29")
                {
                    a = a + 1.29;
                    listBox2.Items.Add(listBox1.SelectedItem);
                    textBox4.Text = a.ToString();
                }
                else if (listBox1.SelectedItem.ToString () == "Sour Cream & Chive Baked Potato$2.69")
                {
                    a = a + 2.69;
                    listBox2.Items.Add(listBox1.SelectedItem);
                    textBox4.Text = a.ToString();
                }
                else if (listBox1.SelectedItem.ToString () == "Broccoli & Cheese Baked Potato**$2.69")
                {
                    a = a + 2.69;
                    listBox2.Items.Add(listBox1.SelectedItem);
                    textBox4.Text = a.ToString(); 
                }
                else if (listBox1.SelectedItem.ToString () == "Rich & Meaty Chili, Small$1.79")
                {
                    a = a + 1.79;
                    listBox2.Items.Add(listBox1.SelectedItem);
                    textBox4.Text = a.ToString(); 
                 }
                else if (listBox1.SelectedItem.ToString () == "Rich & Meaty Chili, Small$1.79")
                {
                    a = a + 1.79;
                    listBox2.Items.Add(listBox1.SelectedItem);
                    textBox4.Text = a.ToString(); 
                }
                else if (listBox1.SelectedItem.ToString () == "Bacon & Cheese Baked Potato**2.69")
                {
                    a = a + 2.69;
                    listBox2.Items.Add(listBox1.SelectedItem);
                    textBox4.Text = a.ToString();
                 }
                else if (listBox1.SelectedItem.ToString () == "Rich & Meaty Chili, Large$2.49")
                {
                    a = a + 2.49;
                    listBox2.Items.Add(listBox1.SelectedItem);
                    textBox4.Text = a.ToString(); 
                  }
                else if (listBox1.SelectedItem.ToString () == "Hot Coffee, Regular.$1.09")
                {
                    a = a + 1.09;
                    listBox2.Items.Add(listBox1.SelectedItem);
                    textBox4.Text = a.ToString();
                }
                else if (listBox1.SelectedItem.ToString () == "Rich & Meaty Chili, Large$2.49")
                {
                    a = a + 2.49;
                    listBox2.Items.Add(listBox1.SelectedItem);
                    textBox4.Text = a.ToString();
                }
                else if (listBox1.SelectedItem.ToString () == "Rich & Meaty Chili, Large$2.49")
                {
                    a = a + 2.49;
                    listBox2.Items.Add(listBox1.SelectedItem);
                    textBox4.Text = a.ToString();
                }
                else if (listBox1.SelectedItem.ToString () == "Rich & Meaty Chili, Large$2.49")
                {
                    a = a + 2.49;
                    listBox2.Items.Add(listBox1.SelectedItem);
                    textBox4.Text = a.ToString();
                }
                else
                {
                    MessageBox.Show("Please Select Foods");
                }
            }
            else
            {
                MessageBox.Show("Please select any item from Menue to add!");
            }

        }

        private void button2_Click(object sender, EventArgs e)

        {
            if (listBox2.Items.Count==0)
            {
                MessageBox.Show("The List Box is Empty");

            }
           
            else
            {
                if (listBox2.SelectedItem != null)
                {

                    if (listBox2.SelectedItem.ToString () == "Garden Side Salad	$1.49")
                    {
                        a = a - 1.49;
                        listBox2.Items.Remove(listBox2.SelectedItem);
                        textBox4.Text = a.ToString();
                        if (listBox2.Items.Count == 0)
                        {
                            textBox4.Text = 0.ToString();
                        }
                    }

                 else   if (listBox2.SelectedItem.ToString () == "Caesar Side Salad	$1.49")
                    {
                        a = a - 1.49;
                        listBox2.Items.Remove(listBox2.SelectedItem);
                        textBox4.Text = a.ToString();
                        if (listBox2.Items.Count == 0)
                        {
                            textBox4.Text = 0.ToString();
                        }
                    }
                 else   if (listBox2.SelectedItem.ToString () == "Apple Slices	$.99")
                    {
                        a = a - 0.99;
                        listBox2.Items.Remove(listBox2.SelectedItem);
                        textBox4.Text = a.ToString();
                        if (listBox2.Items.Count == 0)
                        {
                            textBox4.Text = 0.ToString();
                        }
                    }
                  else  if (listBox2.SelectedItem.ToString () == "Plain Baked Potato $1.29")
                    {
                        a = a - 1.29;
                        listBox2.Items.Remove(listBox2.SelectedItem);
                        textBox4.Text = a.ToString();
                        if (listBox2.Items.Count == 0)
                        {
                            textBox4.Text = 0.ToString();
                        }
                    }
                  else  if (listBox2.SelectedItem.ToString () == "Sour Cream & Chive Baked Potato$2.69")
                    {
                        a = a - 2.69;
                        listBox2.Items.Remove(listBox2.SelectedItem);
                        textBox4.Text = a.ToString();
                        if (listBox2.Items.Count == 0)
                        {
                            textBox4.Text = 0.ToString();
                        }
                    }
                    else if (listBox2.SelectedItem.ToString () == "Broccoli & Cheese Baked Potato**$2.69")
                    {
                        a = a - 2.69;
                        listBox2.Items.Remove(listBox2.SelectedItem);
                        textBox4.Text = a.ToString(); 
                        if(listBox2.Items.Count==0)
                        {
                            textBox4.Text = 0.ToString();
                        }
                    }
                    else if (listBox2.SelectedItem.ToString () == "Rich & Meaty Chili, Small$1.79")
                    {
                        a = a - 1.79;
                        listBox2.Items.Remove(listBox2.SelectedItem);
                        textBox4.Text = a.ToString();
                        if (listBox2.Items.Count == 0)
                        {
                            textBox4.Text = 0.ToString(); 
                        }
                    }
                    else if (listBox2.SelectedItem.ToString () == "Bacon & Cheese Baked Potato**2.69")
                    {
                        a = a - 2.69;
                        listBox2.Items.Remove(listBox2.SelectedItem);
                        textBox4.Text = a.ToString();
                        if (listBox2.Items.Count == 0)
                        {
                            textBox4.Text = 0.ToString(); 
                        }
                    }
                    else if (listBox2.SelectedItem.ToString () == "Rich & Meaty Chili, Large$2.49")
                    {
                        a = a - 2.49;
                        listBox2.Items.Remove(listBox2.SelectedItem);
                        textBox4.Text = a.ToString();
                        if (listBox2.Items.Count == 0)
                        {
                            textBox4.Text = 0.ToString();
                        }
                    }
                    else if (listBox2.SelectedItem.ToString ()== "Hot Coffee, Regular.$1.09")
                    {
                        a = a - 1.09;
                        listBox2.Items.Remove(listBox2.SelectedItem);
                        textBox4.Text = a.ToString();
                        if (listBox2.Items.Count == 0)
                        {
                            textBox4.Text = 0.ToString();
                        }
                    }

                }
                else
            {
             MessageBox.Show("Please select any item from Oreder List!");
            }
            }
            //


            //}

        }
        
        

      
        private void button3_Click(object sender, EventArgs e)
        {
            
            if(listBox2.Items.Count == 0)
            {
                MessageBox.Show("OOPS :-) your Oreder list is Empty");
            }
            else if (textBox1.Text == "" && richTextBox1.Text == "" && textBox2.Text == "")
            {
                MessageBox.Show("Please Enter your Information");
            }
            else if (textBox1.Text == "")
            {
                MessageBox.Show("Please Enter your Name");
            }
            else if (richTextBox1.Text == "")
            {
                MessageBox.Show("Please Enter your Address");
            }
            else if (textBox2.Text == "")
            {
                MessageBox.Show("Please Enter your phone number");
            }
            // else if (textBox2.Text !="0".ToString()&&textBox2.Text != "1".ToString()&&( textBox2.Text != 2.ToString())&& (textBox2.Text != 3.ToString())&& (textBox2.Text != 4.ToString())&& (textBox2.Text != 5.ToString())&& (textBox2.Text != 6.ToString())&&( textBox2.Text != 7.ToString())&& (textBox2.Text != 8.ToString())&&( textBox2.Text != 9.ToString()))
            // {
            // MessageBox.Show("Please Enter integers as phone no and be sure your number is CORRECT");
            // }
            //System.Text.RegularExpressions.Regex.IsMatch(textBox2.Text, "[ ^ 0-9]");




            else
            {
                if(System.Text.RegularExpressions.Regex.IsMatch(textBox2.Text, "[ ^ 0-9]"))
                {
                    textBox4.Text = "";
                    textBox1.Text = "";
                    richTextBox1.Text = "";
                    textBox2.Text = "";
                    listBox2.Text = "";
                    listBox2.Items.Clear();
                    //Form2 f2 = new Form2();
                    //this.Hide();
                    //f2 .Show();

                    //  listBox2.Items.Remove(1);
                    MessageBox.Show("Thank you for Ordring ");
                }
                else {
                    MessageBox.Show("Please Enter Correct Phone Number ");
                    textBox2.Text = "";
                }
            }
            

        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
           

        }

        private void listBox1_SelectedValueChanged(object sender, EventArgs e)
        {

        }

        private void button1_TextChanged(object sender, EventArgs e)
        {
            
        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {
           // if (textBox3.Text != "")
                //textBox4.Text = (int.Parse(textBox3.Text) * 1.49).ToString();
        }

        private void textBox4_TextChanged(object sender, EventArgs e)
        {
            
        }

        private void listBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Form7 f2 = new Form7();
           
            f2.Show();

            
        }

        private void textBox2_KeyPress(object sender, KeyPressEventArgs e)
        {
            
            if(char.IsNumber(e.KeyChar)||e.KeyChar == '.')
            {

            }
            else
            {
                e.Handled = e.KeyChar != (char)Keys.Back;
            }
        }

        private void button5_Click(object sender, EventArgs e)
        {
            login_adm lg = new login_adm();
           // this.Hide();
            lg.Show();

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}

/*






Trendzz’s Drinks Menu
--------------------------
Beverages	
Redhead Roasters®
Hot Coffee, Regular.$1.09
Lowfat White Milk	$1.29
Lowfat Chocolate Milk.$1.29
Juicy Juice® Apple Juice$1.49
Diet Coke®, Small Cup$1.49
Sprite®, Small Cup	$1.49
Coca-Cola®, Small Cup.$1.49
Minute Maid® 
Light Lemonade, Small Cup.$1.49
Hi-C® 
Flashin’ Fruit Punch®, Small Cup$1.49

Trendzz’s Chicken Nuggets
--------------------------
Crispy Chicken Nuggets		
4-Piece Chicken Nuggets $0.99	
4-Piece Spicy Chicken Nuggets	$0.99	
6-Piece Chicken Nuggets$1.79	
6-Piece Spicy Chicken Nuggets	$1.79	
10-Piece Chicken Nuggets$5.99
10-Piece Spicy Chicken Nuggets**$5.99

Trendzz’s Burger Menu + Baconator®
--------------------------
Sandwiches				
Jr. Cheeseburger		
Jr. Bacon Cheeseburger	$1.79	
Jr. Cheeseburger Deluxe	$1.59	
Double Stack™	$1.99	
1/4 lb.* Single w/ Cheese	$3.89	
1/2 lb.* Double w/ Cheese	$4.79	
3/4 lb.* Triple w/ Cheese	$5.89	
Baconator®	$5.89	

Trendzz’s Frosty Ice Cream
--------------------------
Frosty™ Dairy Desserts	
Classic Frosty, Chocolate, Small	$0.99
Classic Frosty, Vanilla, Small	$0.99
Chocolate Frosty Shake, Small	$2.59
Chocolate Frosty Shake, Large	$3.29
Strawberry Frosty Shake, Small	$2.59
Strawberry Frosty Shake, Large	$3.29
Caramel Frosty Shake, Small	$2.59
Caramel Frosty Shake, Large	$3.29
Chocolate Frosty Waffle Cone	$1.49

Trendzz’s Kids Meal 
--------------------------
Kids' Meal	
Grilled Chicken Wrap	$3.69
Hamburger	$3.19
Cheeseburger	$3.49
4-Piece Chicken Nuggets.3.69
Apple Slices	
Natural-Cut Fries*	$0.99
Juicy Juice® Apple Juice.$.99
Nestlé® Pure Life® Bottled Water.$1.39
Lowfat White Milk	$1.29

(per bowl)
Assorted Granola Bars…$17.50 (per dozen)
Assorted Crisp Bars....$20.00 (per dozen)
Assorted Yogurt..$1.75 (each)
Assorted Donuts.$25.00 (per dozen)
Assorted Ice Cream Bars….$2.50(each)
Assorted Chips…$2.00(per bag)
Pretzels...$2.00 (per bag)
Peanuts..$3.00 (per bag)
Mixed Nuts..$4.00 (per bag)

Breakfast Menu
--------------------------
Served with decaf or regular coffee, 
assorted juices or milk
Farmers Breakfast $10.95
Scrambled eggs, 
patty sausage and hash browns
French Toast $10.95
French toast served with
 bacon and fresh fruit medley
Healthy Plate $9.95
Assorted yogurt,
 your choice of granola or 
oat bran muffin 
and fresh fruit medley
Denver Omelet $12.95
Ham, green pepper, onion, 
tomato and Wisconsin cheddar 
cheese served with hash browns
CYO Omelet $13.95
Your choice of 4 ingredients served 
with hash browns*/
