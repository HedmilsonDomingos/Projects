import java.io.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.JFrame;
import java.sql.*;
import java.sql.DriverManager;

public class registerCustomer extends WindowAdapter
{
	Frame f6;
	JButton bt1,bt2,bt3;
	Label lb1,lb2,lb3,lb4,lb5,lb5_1,lb6,lb7,lb8,lb9,lb_img1,lb_id;
	JPanel panel = new JPanel();
	Font fn,fn2;
	String gender;
	JTextField t1,t2,t3,t4,t4_1,t4_2,t5,t6,t7,t8,t_gender,t_id;
	Choice c;

	JRadioButton r1=new JRadioButton("Male");    
	JRadioButton r2=new JRadioButton("Female");


	public registerCustomer()
	{
		gui();
	}
	public void windowClosing(WindowEvent e)
	{
		f6.dispose();
		//mainFrame obj = new mainFrame();
	}
	public void gui()
	{
		f6 = new Frame("Customer Registration");
		f6.addWindowListener(this);
		f6.setBackground(Color.WHITE);

		panel.setBackground(Color.GRAY);
		panel.setBounds(5,40,950,100);

		MenuBar mb = new MenuBar();
		Menu menu = new Menu("Home");
		Menu menu1 = new Menu("Stock");
		// Menu submenu = new Menu("Sub Menu");
		Menu menu2 = new Menu("Customers");
		Menu submenu_custm = new Menu("Sub Menu");
		Menu menu3 = new Menu("Employees");
		Menu submenu_emp = new Menu("Sub Menu");
		Menu menu4 = new Menu("Help");
		Menu menu5 = new Menu("Quit");

		//menu
		MenuItem gohome = new MenuItem("Go Home");
		menu.add(gohome);
		//Quit
		MenuItem quit = new MenuItem("Close Application");
		menu5.add(quit);

		// Items for the first menu1
		MenuItem i1 = new MenuItem("Register Product");
		MenuItem i2 = new MenuItem("Search   Product");
		MenuItem i3 = new MenuItem("Update   Product");
		MenuItem i4 = new MenuItem("Delete   Product");
		//MenuItem i5 = new MenuItem("Sub menu Item 2");

		// Items for the Customers menu2
		MenuItem i6 = new MenuItem("Register");
		MenuItem i7 = new MenuItem("Edit");
		MenuItem i8 = new MenuItem("View");

		// Items for the Employess menu3
		MenuItem i9 = new MenuItem("Register");
		MenuItem i10 = new MenuItem("Edit");
		MenuItem i11 = new MenuItem("View");

		gohome.addActionListener(new ActionListener()
			{
				public void actionPerformed(ActionEvent e)
				{
					try
					{
						f6.dispose();
						mainFrame regP = new mainFrame();
					}
					catch(Exception ex)
					{
						JOptionPane.showMessageDialog(null,ex);
					}
				}
			});
		quit.addActionListener(new ActionListener()
			{
				public void actionPerformed(ActionEvent e)
				{
					try
					{
						f6.dispose();
					}
					catch(Exception ex)
					{
						JOptionPane.showMessageDialog(null,ex);
					}
				}
			});
		i1.addActionListener(new ActionListener()
			{
				public void actionPerformed(ActionEvent e)
				{
					try
					{
						f6.dispose();
						registerProduct regP = new registerProduct();
					}
					catch(Exception ex)
					{
						JOptionPane.showMessageDialog(null,ex);
					}
				}
			});
		i2.addActionListener(new ActionListener()
			{
				public void actionPerformed(ActionEvent e)
				{
					try
					{
						f6.dispose();
						searchProduct regP = new searchProduct();
					}
					catch(Exception ex)
					{
						JOptionPane.showMessageDialog(null,ex);
					}
				}
			});
		i3.addActionListener(new ActionListener()
			{
				public void actionPerformed(ActionEvent e)
				{
					try
					{
						f6.dispose();
						updateProduct regP = new updateProduct();
					}
					catch(Exception ex)
					{
						JOptionPane.showMessageDialog(null,ex);
					}
				}
			});
		i4.addActionListener(new ActionListener()
			{
				public void actionPerformed(ActionEvent e)
				{
					try
					{
						f6.dispose();
						deleteProduct regP = new deleteProduct();
					}
					catch(Exception ex)
					{
						JOptionPane.showMessageDialog(null,ex);
					}
				}
			});
		fn = new Font("Arial",Font.BOLD,25);
		lb1 = new Label("Customer Registration");
		lb1.setForeground(Color.white);
		lb1.setFont(fn);
		lb1.setBounds(10,40,80,25);

		fn2 = new Font("Arial",Font.PLAIN,14);
		lb2 = new Label("First Name");
		lb2.setFont(fn2);
		lb2.setBounds(40,150,100,20);
		lb2.setForeground(Color.BLACK);

		lb3 = new Label("Last Name:");
		lb3.setFont(fn2);
		lb3.setBounds(40,180,100,20);
		lb3.setForeground(Color.BLACK);

		lb4 = new Label("Mobile no:");
		lb4.setFont(fn2);
		lb4.setBounds(40,210,100,20);
		lb4.setForeground(Color.BLACK);

		lb5 = new Label("DOB:");
		lb5.setFont(fn2);
		lb5.setBounds(40,240,100,20);
		lb5.setForeground(Color.BLACK);

		lb5_1 = new Label("Gender:");
		lb5_1.setFont(fn2);
		lb5_1.setBounds(40,270,100,20);
		lb5_1.setForeground(Color.BLACK);

		Label lb5_2 = new Label("Type:");
		lb5_2.setFont(fn2);
		lb5_2.setBounds(40,300,100,20);
		lb5_2.setForeground(Color.BLACK);

		t1 = new JTextField("");
		t1.setBounds(150,150,170,20); 
		t2 = new JTextField("");
		t2.setBounds(150,180,170,20);
		t3 = new JTextField("");
		t3.setBounds(150,210,170,20);
		t3.addKeyListener(new KeyAdapter()
			{
				public void keyTyped(KeyEvent e)
				{
					char character = e.getKeyChar();
					if (((character < '0') || (character > '9')) && (character != '\b')) 
					{
						e.consume();
					}
					else if (t3.getText().length() >= 10) 
					{
						e.consume();
					}
				}
			});
		t4 = new JTextField("");
		t4.setBounds(150,240,40,20);
		t4_1 = new JTextField("");
		t4_1.setBounds(200,240,40,20);
		t4_2 = new JTextField("");
		t4_2.setBounds(250,240,70,20);
		t4.addKeyListener(new KeyAdapter()
			{
				public void keyTyped(KeyEvent e)
				{					
					char character = e.getKeyChar();
					if (((character < '0') || (character > '9')) && (character != '\b')) 
					{
						e.consume();
					}
					else if (t4.getText().length() >= 2) 
					{
						e.consume();
					}
				}
			});
		t4_1.addKeyListener(new KeyAdapter()
			{
				public void keyTyped(KeyEvent e)
				{
					char character = e.getKeyChar();
					if (((character < '0') || (character > '9')) && (character != '\b')) 
					{
						e.consume();
					}
					else if (t4_1.getText().length() >= 2) 
					{
						e.consume();
					}
				}
			});
		t4_2.addKeyListener(new KeyAdapter()
			{
				public void keyTyped(KeyEvent e)
				{
					char character = e.getKeyChar();
					if (((character < '0') || (character > '9')) && (character != '\b')) 
					{
						e.consume();
					}
					else if (t4_2.getText().length() >= 4) 
					{
						e.consume();
					}
				}
			});


		r1.setBounds(150,270,60,20);
		r1.setForeground(Color.BLACK);
		r1.setBackground(Color.WHITE);
		r2.setBounds(220,270,70,20);
		r2.setForeground(Color.BLACK);
		r2.setBackground(Color.WHITE);

		ButtonGroup bg = new ButtonGroup();
		bg.add(r1);
		bg.add(r2);
		f6.add(r1);
		f6.add(r2);


		CheckboxGroup cbg = new CheckboxGroup();  
        Checkbox checkBox1 = new Checkbox("GOLD", cbg, false);    
        checkBox1.setBounds(150,300,60,20);    
        Checkbox checkBox2 = new Checkbox("SILVER", cbg, false);    
        checkBox2.setBounds(150,320,70,20);
        Checkbox checkBox3 = new Checkbox("BRONZE", cbg, false);    
        checkBox3.setBounds(150,340,70,20);   
        f6.add(checkBox1); 
        f6.add(checkBox2);
        f6.add(checkBox3);
        f6.add(lb5_2);

		lb6 = new Label("Address:");
		lb6.setFont(fn2);
		lb6.setBounds(340,150,125,20);
		lb6.setForeground(Color.BLACK);

		lb7 = new Label("City:");
		lb7.setFont(fn2);
		lb7.setBounds(340,180,100,20);
		lb7.setForeground(Color.BLACK);

		lb8 = new Label("Postal Code:");
		lb8.setFont(fn2);
		lb8.setBounds(340,210,100,20);
		lb8.setForeground(Color.BLACK);

		lb9 = new Label("Country:");
		lb9.setFont(fn2);
		lb9.setBounds(340,240,100,20);
		lb9.setForeground(Color.BLACK);

		lb_id = new Label("Customer ID:");
		lb_id.setFont(fn2);
		lb_id.setBounds(340,270,100,20);
		lb_id.setForeground(Color.BLACK);

		t5 = new JTextField("");
		t5.setBounds(470,150,130,20); 
		t6 = new JTextField("");
		t6.setBounds(470,180,130,20);
		t7 = new JTextField("");
		t7.setBounds(470,210,130,20);
		t7.addKeyListener(new KeyAdapter()
		{
			public void keyTyped(KeyEvent e)
			{
				char character = e.getKeyChar();
				if (((character < '0') || (character > '9')) && (character != '\b')) 
				{
					e.consume();
				}
			}
		});
		c = new Choice();
		c.setBounds(470,240,130,20);
		c.add("Afganistan");
		c.add("Angola");
		c.add("Brasil");
		c.add("India");
		c.add("USA");

		t_id = new JTextField("");
		t_id.setBounds(470,270,130,20);
		f6.add(c);

		bt1 = new JButton("Register");
		bt1.setBackground(Color.GRAY);
		bt1.setForeground(Color.WHITE);
		bt1.setBounds(600,400,95,20); 

		bt2 = new JButton("Clear All");
		bt2.setBackground(Color.GRAY);
		bt2.setForeground(Color.WHITE);
		bt2.setBounds(710,400,95,20);

		bt3 = new JButton("< Go Home");
		bt3.setBackground(Color.GRAY);
		bt3.setForeground(Color.WHITE);
		bt3.setBounds(820,400,100,20);

		JLabel lb_img1 = new JLabel(new ImageIcon("A:/IV_semester/Java_lab/CIA 3/imgs/solutions.png"));
    	//lb_img1.setLayout(null);
		lb_img1.setBounds(650,150,260,200);
    	//lb_img1.setSize(650,400);
		t_gender = new JTextField("");
		bt1.addActionListener(new ActionListener()
			{
				public void actionPerformed(ActionEvent e2)
				{
					try
					{
						if (r1.isSelected()) 
						{	
							t_gender.setText("Male");
						}
						else if (r2.isSelected()) 
						{
							t_gender.setText("Female");
						}
						theQuery("insert into customer (customer_id ,first_name, last_name, mobile_no, day, month, year, gender, address, city,postal_code,country) values ('"+t_id.getText()+"','"+t1.getText()+"','"+t2.getText()+"','"+t3.getText()+"','"+t4.getText()+"','"+t4_1.getText()+"','"+t4_2.getText()+"','"+t_gender.getText()+"','"+t5.getText()+"','"+t6.getText()+"','"+t7.getText()+"','"+c.getSelectedItem()+"') ");
						JOptionPane.showMessageDialog(null," Data successfully saved...\n Thank you very much...");
					}
					catch(Exception ex)
					{
						JOptionPane.showMessageDialog(null,ex);
					}
				}
			});

		bt2.addActionListener(new ActionListener()
			{
				public void actionPerformed(ActionEvent e2)
				{
					try
					{
						t1.setText("");
						t2.setText("");
						t3.setText("");
						t4.setText("");
						t4_1.setText("");
						t4_2.setText("");
						t5.setText("");
						t6.setText("");
						t7.setText("");
						t_id.setText("");
					}
					catch(Exception ex)
					{
						JOptionPane.showMessageDialog(null,ex);
					}
				}
			});

		bt3.addActionListener(new ActionListener()
			{
				public void actionPerformed(ActionEvent e3)
				{
					try
					{
						f6.dispose();
						mainFrame obj1 = new mainFrame();
					}
					catch(Exception ex)
					{
						JOptionPane.showMessageDialog(null,ex);
					}
				}
			});

		menu1.add(i1);
		menu1.add(i2);
		menu1.add(i3);
		menu1.add(i4);

		menu2.add(i6);
		menu2.add(i7);
		menu2.add(i8);

		menu3.add(i9);
		menu3.add(i10);
		menu3.add(i11);

		mb.add(menu);
		mb.add(menu1);
		mb.add(menu2);
		mb.add(menu3);
		mb.add(menu4);
		mb.add(menu5);

		f6.setMenuBar(mb);
		panel.add(lb1);
		f6.add(panel);

		f6.add(lb2);		
		f6.add(lb3);
		f6.add(lb4);
		f6.add(lb4);
		f6.add(lb4);
		f6.add(lb5);
		f6.add(lb5_1);
		f6.add(lb6);
		f6.add(lb7);
		f6.add(lb8);
		f6.add(lb9);
		f6.add(lb_id);

		f6.add(t1);
		f6.add(t2);
		f6.add(t3);
		f6.add(t4);
		f6.add(t4_1);
		f6.add(t4_2);
		f6.add(t5);
		f6.add(t6);
		f6.add(t7);
		f6.add(t_id);

		f6.add(bt1);
		f6.add(bt2);
		f6.add(bt3);

		f6.add(lb_img1);

		f6.setLayout(null);
		f6.setVisible(true);
		f6.setSize(950,450);
	}
		// SETTING UP THE CONNECTION
	public void theQuery(String query)
	{
		Connection con = null;
		Statement st = null;
		try
		{
			con = DriverManager.getConnection("jdbc:mysql://localhost/sonoo","root","heddyshost");
			st = con.createStatement();
			st.executeUpdate(query);
		}
		catch(Exception ex)
		{
			JOptionPane.showMessageDialog(null, ex.getMessage());
		}
	}
	public static void main(String[] args)
	{
		new registerCustomer();
	}
}