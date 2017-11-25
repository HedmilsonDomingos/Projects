import java.io.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.JFrame;
import java.sql.*;
import java.sql.DriverManager;
import javax.swing.event.ListSelectionListener;
import javax.swing.event.ListSelectionEvent;

class connection_class
{
	Connection con = null;
	public static Connection ConnecrDb()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/sonoo","root","heddyshost");
			return con;
		}
		catch(Exception e)
		{
			JOptionPane.showMessageDialog(null,e);
			return null;
		}
	}
}
public class registerProduct extends WindowAdapter
{
	Frame f2;
	JButton bt1,bt2,bt3;
	Label lb1,lb2,lb3,lb4,lb5,lb6,lb7,lb8,lb9,lb_img1;
	//JLabel lb_img2;
	JPanel panel = new JPanel();
	Font fn,fn2;

	JTextField t1,t2,t3,t4,t5,t6,t7,t8;

	Connection con = null;
	ResultSet rs = null;
	PreparedStatement pst = null;

	public registerProduct()
	{
		gui();
		con = connection_class.ConnecrDb();
	}
	public void windowClosing(WindowEvent e)
	{
		f2.dispose();
		mainFrame obj = new mainFrame();
	}
	public void gui()
	{
		f2 = new Frame("Product Registration");
		f2.addWindowListener(this);
		f2.setBackground(Color.WHITE);

		panel.setBackground(Color.GRAY);
		panel.setBounds(5,40,950,80);

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

		//Quit
		MenuItem quit = new MenuItem("Close Application");
		menu5.add(quit);
		quit.addActionListener(new ActionListener()
			{
				public void actionPerformed(ActionEvent e)
				{
					try
					{
						f2.dispose();
					}
					catch(Exception ex)
					{
						JOptionPane.showMessageDialog(null,ex);
					}
				}
			});

		gohome.addActionListener(new ActionListener()
			{
				public void actionPerformed(ActionEvent e)
				{
					try
					{
						f2.dispose();
						mainFrame regP = new mainFrame();
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
						f2.dispose();
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
						f2.dispose();
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
						f2.dispose();
						deleteProduct regP = new deleteProduct();
					}
					catch(Exception ex)
					{
						JOptionPane.showMessageDialog(null,ex);
					}
				}
			});
		i6.addActionListener(new ActionListener()
			{
				public void actionPerformed(ActionEvent e)
				{
					try
					{
						f2.dispose();
						registerCustomer regP = new registerCustomer();
					}
					catch(Exception ex)
					{
						JOptionPane.showMessageDialog(null,ex);
					}
				}
			});
		fn = new Font("Arial",Font.BOLD,25);
		lb1 = new Label("Product Registration");
		lb1.setForeground(Color.WHITE);
		lb1.setFont(fn);
		lb1.setBounds(10,40,80,25);

		fn2 = new Font("Arial",Font.PLAIN,14);
		lb2 = new Label("Product Code:");
		lb2.setFont(fn2);
		lb2.setBounds(40,150,100,20);
		lb2.setForeground(Color.BLACK);

		lb3 = new Label("Product Name:");
		lb3.setFont(fn2);
		lb3.setBounds(40,180,100,20);
		lb3.setForeground(Color.BLACK);

		lb4 = new Label("Category:");
		lb4.setFont(fn2);
		lb4.setBounds(40,210,100,20);
		lb4.setForeground(Color.BLACK);

		lb5 = new Label("Supplier:");
		lb5.setFont(fn2);
		lb5.setBounds(40,240,100,20);
		lb5.setForeground(Color.BLACK);

		t1 = new JTextField("");
		t1.setBounds(150,150,170,20); 
		t2 = new JTextField("");
		t2.setBounds(150,180,170,20);
		t3 = new JTextField("");
		t3.setBounds(150,210,170,20); 
		t4 = new JTextField("");
		t4.setBounds(150,240,170,20);


		lb6 = new Label("Purchase Quantity:");
		lb6.setFont(fn2);
		lb6.setBounds(340,150,125,20);
		lb6.setForeground(Color.BLACK);

		lb7 = new Label("Purchase Cost:");
		lb7.setFont(fn2);
		lb7.setBounds(340,180,100,20);
		lb7.setForeground(Color.BLACK);

		lb8 = new Label("Purchase Price:");
		lb8.setFont(fn2);
		lb8.setBounds(340,210,100,20);
		lb8.setForeground(Color.BLACK);

		lb9 = new Label("Tax %:");
		lb9.setFont(fn2);
		lb9.setBounds(340,240,100,20);
		lb9.setForeground(Color.BLACK);

		t5 = new JTextField("");
		t5.setBounds(470,150,130,20); 
		t6 = new JTextField("");
		t6.setBounds(470,180,130,20);
		t7 = new JTextField("");
		t7.setBounds(470,210,130,20); 
		t8 = new JTextField("");
		t8.setBounds(470,240,130,20);

		t1.addKeyListener(new KeyAdapter()
			{
				public void keyTyped(KeyEvent e)
				{
					char character = e.getKeyChar();
					if ((character < '0') || (character > '9')) 
					{
						e.consume();
					}
				}
			});
		t5.addKeyListener(new KeyAdapter()
			{
				public void keyTyped(KeyEvent e)
				{
					char character = e.getKeyChar();
					if ((character < '0') || (character > '9')) 
					{
						e.consume();
					}
				}
			});
		t6.addKeyListener(new KeyAdapter()
			{
				public void keyTyped(KeyEvent e)
				{
					char character = e.getKeyChar();
					if ((character < '0') || (character > '9')) 
					{
						e.consume();
					}
				}
			});
		t7.addKeyListener(new KeyAdapter()
			{
				public void keyTyped(KeyEvent e)
				{
					char character = e.getKeyChar();
					if ((character < '0') || (character > '9')) 
					{
						e.consume();
					}
				}
			});
		t8.addKeyListener(new KeyAdapter()
			{
				public void keyTyped(KeyEvent e)
				{
					char character = e.getKeyChar();
					if ((character < '0') || (character > '9')) 
					{
						e.consume();
					}
				}
			});

		Label lb_category = new Label("Choose Category Here:");
		lb_category.setFont(fn2);
		lb_category.setBounds(40,270,150,20);
		lb_category.setForeground(Color.BLACK);

		DefaultListModel<String> l1 = new DefaultListModel<>();
		l1.addElement("Bike");
		l1.addElement("MotoBike");
		l1.addElement("Car");
		l1.addElement("Cell Phones");
		l1.addElement("Laptop");
		l1.addElement("Desktop");

		JList<String> list = new JList<>(l1);
		list.setBounds(195,270,125,110);
		list.setBackground(Color.GRAY);
		list.setForeground(Color.WHITE);

		list.addListSelectionListener( new ListSelectionListener()
		{
			public void valueChanged(ListSelectionEvent evnt)
			{
				if (!evnt.getValueIsAdjusting()) 
				{
					t3.setText(list.getSelectedValue().toString());
				}
			}
		});

		f2.add(lb_category);
		f2.add(list);

		bt1 = new JButton("Add");
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

		JLabel lb_img1 = new JLabel(new ImageIcon("A:/IV_semester/Java_lab/CIA 3/imgs/stock4.png"));
    	//lb_img1.setLayout(null);
		lb_img1.setBounds(650,150,260,200);
    	//lb_img1.setSize(650,400);

		bt1.addActionListener(new ActionListener()
			{
				public void actionPerformed(ActionEvent e2)
				{
					if (t1.getText().isEmpty() || t2.getText().isEmpty() || t3.getText().isEmpty() || t4.getText().isEmpty() || t5.getText().isEmpty() || t6.getText().isEmpty() || t7.getText().isEmpty() || t8.getText().isEmpty()) 
					{
						JOptionPane.showMessageDialog(null,"You must fill all the field");
					}
					else
					{
						Double cal_tax, product_cost, product_price, profit_before_tax, profit_after_tax, total_amount_to_spend, total_amount_to_Gain,tax;
						int quantity;


						try
						{


						String sql="select p_code from product where p_code=?";
            			pst = con.prepareStatement(sql);
            			pst.setString(1, t1.getText());
            			rs= pst.executeQuery();
            			if(rs.next())
            			{
	            			JOptionPane.showMessageDialog(null,"Sorry!\nProduct '"+t1.getText()+"' is already available in our database!\nWe cannot procede this operation.");
	            			t1.setText("");
            			}
            			else
            			{
            				try
							{	
								product_cost = Double.parseDouble(t6.getText());
								quantity = Integer.parseInt(t5.getText());
								product_price = Double.parseDouble(t7.getText());
								tax = Double.parseDouble(t8.getText());

								total_amount_to_spend = product_cost * quantity;
								total_amount_to_Gain = product_price * quantity;

								profit_before_tax = total_amount_to_Gain - total_amount_to_spend;

								cal_tax = (profit_before_tax*tax)/100;

								profit_after_tax = profit_before_tax - cal_tax;

								theQuery("insert into product (p_code, p_name, category, supplier, quantity, cost, price, tax, profit_before_tax, profit_after_tax) values ('"+t1.getText()+"','"+t2.getText()+"','"+t3.getText()+"','"+t4.getText()+"','"+t5.getText()+"','"+t6.getText()+"','"+t7.getText()+"','"+tax+"','"+profit_before_tax+"','"+profit_after_tax+"')");
								JOptionPane.showMessageDialog(null," Product successfully added...\n Total amount you'll spend to buy all of them is : '"+total_amount_to_spend+"' \n Total amount you'll get after selling all of them is : '"+total_amount_to_Gain+"' \n Thank you very much...");
							}
							catch(Exception ex)
							{
								JOptionPane.showMessageDialog(null,ex);
							}			
            			}
            			}
            			catch(Exception e)
            			{
            				JOptionPane.showMessageDialog(null,e);
            			}						
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

						t5.setText("");
						t6.setText("");
						t7.setText("");
						t8.setText("");
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
						f2.dispose();
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

		/*submenu.add(i4);
		submenu.add(i5);*/

		// menu1.add(submenu);

		mb.add(menu);
		mb.add(menu1);
		mb.add(menu2);
		mb.add(menu3);
		mb.add(menu4);
		mb.add(menu5);

		f2.setMenuBar(mb);
		panel.add(lb1);
		f2.add(panel);

		f2.add(lb2);		
		f2.add(lb3);
		f2.add(lb4);
		f2.add(lb5);
		f2.add(lb6);
		f2.add(lb7);
		f2.add(lb8);
		f2.add(lb9);

		f2.add(t1);
		f2.add(t2);
		f2.add(t3);
		f2.add(t4);
		f2.add(t5);
		f2.add(t6);
		f2.add(t7);
		f2.add(t8);

		f2.add(bt1);
		f2.add(bt2);
		f2.add(bt3);

		f2.add(lb_img1);

		f2.setLayout(null);
		f2.setVisible(true);
		f2.setSize(950,450);

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
		new registerProduct();
	}
}