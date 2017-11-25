import java.io.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.JFrame;
import java.sql.*;
import java.sql.DriverManager;

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
public class deleteProduct extends WindowAdapter
{
	Connection con = null;
	ResultSet rs = null;
	PreparedStatement pst = null;

	Frame f5;
	JButton bt1,bt2,bt3;
	Label lb1,lb2,lb3,lb4,lb5,lb6,lb7,lb8,lb9,lb_img1;
	JPanel panel = new JPanel();
	Font fn,fn2;
	Choice c;

	JTextField t1;

	public deleteProduct()
	{
		gui();
		con = connection_class.ConnecrDb();
	}
	public void windowClosing(WindowEvent e)
	{
		f5.dispose();
		mainFrame obj = new mainFrame();
	}
	public void gui()
	{
		f5 = new Frame("Product Deletion");
		f5.addWindowListener(this);
		f5.setBackground(Color.WHITE);

		panel.setBackground(Color.GRAY);
		panel.setBounds(5,40,550,80);

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

		//Manu
		MenuItem gohome = new MenuItem("Go Home");

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
						f5.dispose();
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
						f5.dispose();
						mainFrame main = new mainFrame();
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
						f5.dispose();
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
						f5.dispose();
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
						f5.dispose();
						updateProduct regP = new updateProduct();
					}
					catch(Exception ex)
					{
						JOptionPane.showMessageDialog(null,ex);
					}
				}
			});
		fn = new Font("Arial",Font.BOLD,25);
		lb1 = new Label("Product Deletion");
		lb1.setForeground(Color.white);
		lb1.setFont(fn);
		lb1.setBounds(10,40,80,25);

		fn2 = new Font("Arial",Font.PLAIN,14);
		lb2 = new Label("Product code:");
		lb2.setFont(fn2);
		lb2.setBounds(40,170,90,20);
		lb2.setForeground(Color.BLACK);

		t1 = new JTextField("");
		t1.setBounds(140,170,150,22);
		t1.addKeyListener(new KeyAdapter()
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

		/*lb3 = new Label("Product Name:");
		lb3.setFont(fn2);
		lb3.setBounds(40,180,100,20);
		lb3.setForeground(Color.white);

		t1 = new JTextField("");
		t1.setBounds(150,150,170,20); */

		bt1 = new JButton("Delete");
		bt1.setBackground(Color.GRAY);
		bt1.setForeground(Color.WHITE);
		bt1.setBounds(310,170,100,20); 

		bt2 = new JButton("Clear");
		bt2.setBackground(Color.GRAY);
		bt2.setForeground(Color.WHITE);
		bt2.setBounds(420,170,100,20);

		bt3 = new JButton("< Go Home");
		bt3.setBackground(Color.GRAY);
		bt3.setForeground(Color.WHITE);
		bt3.setBounds(420,400,100,20);

		JLabel lb_img1 = new JLabel(new ImageIcon("A:/IV_semester/Java_lab/CIA 3/imgs/stock3.png"));
    	//lb_img1.setLayout(null);
		lb_img1.setBounds(-25,210,300,250);
    	//lb_img1.setSize(650,400);

		bt1.addActionListener(new ActionListener()
			{
				public void actionPerformed(ActionEvent e2)
				{
					try
					{
						String sql="select p_code from product where p_code=?";
            			pst = con.prepareStatement(sql);
            			pst.setString(1, t1.getText());
            			rs= pst.executeQuery();
            			if(rs.next())
            			{
	            			JOptionPane.showMessageDialog(null,"Product '"+t1.getText()+"' is available!\n\nClick ok then it will get deleted.");
            				theQuery("delete from product where p_code='"+t1.getText()+"'");
            				JOptionPane.showMessageDialog(null,"Product '"+ t1.getText()+"' was successfully deleted.");
            			}
            			else
            			{
	            			JOptionPane.showMessageDialog(null,"Product '"+t1.getText()+"' is not available in our database!");
            			}	
					}
					catch(Exception ex)
					{
						JOptionPane.showMessageDialog(null,ex);
					}
				}
			});
		bt2 .addActionListener(new ActionListener()
			{
				public void actionPerformed(ActionEvent e3)
				{
					try
					{
						t1.setText("");
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
						f5.dispose();
						mainFrame obj1 = new mainFrame();
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
						f5.dispose();
						registerCustomer regP = new registerCustomer();
					}
					catch(Exception ex)
					{
						JOptionPane.showMessageDialog(null,ex);
					}
				}
			});

		menu.add(gohome);

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

		f5.setMenuBar(mb);
		panel.add(lb1);
		f5.add(panel);

		f5.add(lb2);		

		f5.add(t1);

		f5.add(bt1);
		f5.add(bt2);
		f5.add(bt3);

		f5.add(lb_img1);

		f5.setLayout(null);
		f5.setVisible(true);
		f5.setSize(550,450);
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
		new deleteProduct();
	}
}