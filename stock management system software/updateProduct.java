import java.io.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.JFrame;
import java.sql.*;
import java.sql.DriverManager;

class stock_update
{
	Connection conn = null;
	public static Connection ConnecrDb()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/sonoo","root","heddyshost");
			return conn;
		}
		catch(Exception e)
		{
			JOptionPane.showMessageDialog(null,e);
			return null;
		}
	}
}

public class updateProduct extends WindowAdapter
{
	Frame f4;
	JButton bt1,bt2,bt3,bt_ser;
	Label lb1,lb2,lb3,lb4,lb5,lb6,lb7,lb8,lb9,lb_img1,lb_ser;
	//JLabel lb_img2;
	JPanel panel = new JPanel();
	Font fn,fn2;

	JTextField t1,t2,t3,t4,t5,t6,t7,t8,t_ser;
	JRadioButton r1=new JRadioButton("Male");    
	JRadioButton r2=new JRadioButton("Female");

	Connection conn = null;
	PreparedStatement pst = null;;
	ResultSet rs = null;

	int check = 0;

	public updateProduct()
	{
		gui();
		conn=stock_update.ConnecrDb();
	}
	public void windowClosing(WindowEvent e)
	{
		f4.dispose();
		mainFrame obj = new mainFrame();
	}
	public void gui()
	{
		f4 = new Frame("Update Product Information");
		f4.addWindowListener(this);
		f4.setBackground(Color.WHITE);

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
						f4.dispose();
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
						f4.dispose();
						mainFrame regP = new mainFrame();
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
						f4.dispose();
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
						f4.dispose();
						searchProduct regP = new searchProduct();
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
						f4.dispose();
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
						f4.dispose();
						registerCustomer regP = new registerCustomer();
					}
					catch(Exception ex)
					{
						JOptionPane.showMessageDialog(null,ex);
					}
				}
			});
		fn = new Font("Arial",Font.BOLD,25);
		lb1 = new Label("Update Product Information");
		lb1.setForeground(Color.WHITE);
		lb1.setFont(fn);
		lb1.setBounds(10,40,80,25);

		fn2 = new Font("Arial",Font.PLAIN,14);
		lb_ser = new Label("Choose Product:");
		lb_ser.setFont(fn2);
		lb_ser.setBounds(40,170,110,20);
		lb_ser.setForeground(Color.BLACK);

		t_ser = new JTextField("");
		t_ser.setBounds(150,170,170,22);

		bt_ser = new JButton("Find Product");
		bt_ser.setBackground(Color.GRAY);
		bt_ser.setBounds(340,170,110,22);

		lb2 = new Label("Product Code:");
		lb2.setFont(fn2);
		lb2.setBounds(40,200,100,20);
		lb2.setForeground(Color.BLACK);

		lb3 = new Label("Product Name:");
		lb3.setFont(fn2);
		lb3.setBounds(40,230,100,20);
		lb3.setForeground(Color.BLACK);

		lb4 = new Label("Category:");
		lb4.setFont(fn2);
		lb4.setBounds(40,260,100,20);
		lb4.setForeground(Color.BLACK);

		lb5 = new Label("Supplier:");
		lb5.setFont(fn2);
		lb5.setBounds(40,290,100,20);
		lb5.setForeground(Color.BLACK);

		t1 = new JTextField("");
		t1.setBounds(150,200,170,20); 
		t2 = new JTextField("");
		t2.setBounds(150,230,170,20);
		t3 = new JTextField("");
		t3.setBounds(150,260,170,20); 
		t4 = new JTextField("");
		t4.setBounds(150,290,170,20);


		lb6 = new Label("Purchase Quantity:");
		lb6.setFont(fn2);
		lb6.setBounds(340,200,125,20);
		lb6.setForeground(Color.BLACK);

		lb7 = new Label("Purchase Cost:");
		lb7.setFont(fn2);
		lb7.setBounds(340,230,100,20);
		lb7.setForeground(Color.BLACK);

		lb8 = new Label("Purchase Price:");
		lb8.setFont(fn2);
		lb8.setBounds(340,260,100,20);
		lb8.setForeground(Color.BLACK);

		lb9 = new Label("Tax %:");
		lb9.setFont(fn2);
		lb9.setBounds(340,290,100,20);
		lb9.setForeground(Color.BLACK);

		t5 = new JTextField("");
		t5.setBounds(470,200,130,20); 
		t6 = new JTextField("");
		t6.setBounds(470,230,130,20);
		t7 = new JTextField("");
		t7.setBounds(470,260,130,20); 
		t8 = new JTextField("");
		t8.setBounds(470,290,130,20);

		t_ser.addKeyListener(new KeyAdapter()
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


		bt1 = new JButton("Update");
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

		JLabel lb_img1 = new JLabel(new ImageIcon("A:/IV_semester/Java_lab/CIA 3/imgs/inventory-management.png"));
		lb_img1.setBounds(650,150,260,200);
		bt_ser.addActionListener(new ActionListener()
			{
				public void actionPerformed(ActionEvent e2)
				{
					try
					{
						String sql = "select p_code from product where p_code=?";
						pst = conn.prepareStatement(sql);
            			pst.setString(1, t_ser.getText());
            			rs= pst.executeQuery();
            			if(rs.next())
            			{
            				pst = conn.prepareStatement("select p_code,p_name,category,supplier,quantity,cost,price,tax from product where p_code='"+t_ser.getText()+"'");
        					rs = pst.executeQuery();

							while(rs.next())
							{
								t1.setText(rs.getString("p_code"));
								t2.setText(rs.getString("p_name"));
								t3.setText(rs.getString("category"));
								t4.setText(rs.getString("supplier"));
								t5.setText(rs.getString("quantity"));
								t6.setText(rs.getString("cost"));
								t7.setText(rs.getString("price"));
								t8.setText(rs.getString("tax"));
								check=1;
							}
            			}
            			else
            			{
	            			JOptionPane.showMessageDialog(null,"Product '"+t_ser.getText()+"' is not available in our database!");
            			}
					}
					catch(Exception e3)
					{
						JOptionPane.showMessageDialog(null, e3);
					}
				}
			});

		bt1.addActionListener(new ActionListener()
			{
				public void actionPerformed(ActionEvent e2)
				{
					Double cal_tax, product_cost, product_price, profit_before_tax, profit_after_tax, total_amount_to_spend, total_amount_to_Gain;
					int tax,quantity,code;
					if (check==1) 
					{
							try
							{
								product_cost = Double.parseDouble(t6.getText());
								quantity = Integer.parseInt(t5.getText());
								product_price = Double.parseDouble(t7.getText());
								tax = Integer.parseInt(t8.getText());

								total_amount_to_spend = product_cost * quantity;
								total_amount_to_Gain = product_price * quantity;

								profit_before_tax = total_amount_to_Gain - total_amount_to_spend;

								cal_tax = (profit_before_tax*tax)/100;

								profit_after_tax = profit_before_tax - cal_tax;
								theQuery("update product set p_code = '"+t1.getText()+"', p_name = '"+t2.getText()+"', category = '"+t3.getText()+"',supplier = '"+t4.getText()+"', quantity = '"+t5.getText()+"', cost = '"+t6.getText()+"', price = '"+t7.getText()+"', tax = '"+t8.getText()+"', profit_before_tax='"+profit_before_tax+"', profit_after_tax='"+profit_after_tax+"' where p_code='"+t_ser.getText()+"' ");
								JOptionPane.showMessageDialog(null,"Product Information got updated successfully!\n\nThank you.");
								check=0;
							}
							catch(Exception ex)
							{
								JOptionPane.showMessageDialog(null,ex);
							}
					}
					else
					{
						JOptionPane.showMessageDialog(null,"You need to reteive the Information\nby clicking in the button 'Find Product'.\nThank you. ");
					}					
				}
			});
		bt2.addActionListener(new ActionListener()
			{
				public void actionPerformed(ActionEvent e2)
				{
					try
					{
						t_ser.setText("");
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
						f4.dispose();
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

		f4.setMenuBar(mb);
		panel.add(lb1);
		f4.add(panel);

		f4.add(lb2);		
		f4.add(lb3);
		f4.add(lb4);
		f4.add(lb5);
		f4.add(lb6);
		f4.add(lb7);
		f4.add(lb8);
		f4.add(lb9);

		f4.add(t1);
		f4.add(t2);
		f4.add(t3);
		f4.add(t4);
		f4.add(t5);
		f4.add(t6);
		f4.add(t7);
		f4.add(t8);

		f4.add(bt1);
		f4.add(bt2);
		f4.add(bt3);

		f4.add(lb_img1);

		f4.add(lb_ser);
		f4.add(t_ser);
		f4.add(bt_ser);

		f4.setLayout(null);
		f4.setVisible(true);
		f4.setSize(950,450);
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
		new updateProduct();
	}
}