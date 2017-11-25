import java.io.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.event.*;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import java.sql.*;
import java.sql.DriverManager;
// import java.util.ArrayList;
import net.proteanit.sql.DbUtils;
import javax.swing.table.DefaultTableModel;

class sql_connect
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

public class searchProduct extends WindowAdapter
{
	Frame f3;
	JButton bt1,bt2,bt3;
	Label lb1,lb2,lb3,lb4,lb5,lb6,lb7,lb8,lb9,lb_img1;
	JPanel panel,panel2,panel3,panel4;
	Font fn,fn2;
	Choice c;
	JComboBox comboBox = new JComboBox();
	JScrollPane scroll = new JScrollPane();

	JTable jTable;

	Connection conn = null;
	ResultSet rs = null;
	PreparedStatement pst = null;

	ResultSet rs1 = null;
	PreparedStatement pst1 = null;

	String host = "jdbc:mysql://localhost/sonoo";
	String username = "root";
	String password = "heddyshost";
	Statement st = null;

	JTextField t1;

	public class ScrollTask implements ChangeListener
	{
		public void stateChanged(ChangeEvent e)
		{
			f3.revalidate();
			f3.repaint();
		}
	}
	public searchProduct()
	{
		gui();
		conn=sql_connect.ConnecrDb();
		fetch_Data();
		FillComboBox();
	}
	public void windowClosing(WindowEvent e)
	{
		f3.dispose();
		mainFrame obj = new mainFrame();
	}
	public void fetch_Data()
		{
			try
			{
				//connection1();
				String product_id = t1.getText();
				String sql = "select * from product";
				pst = conn.prepareStatement(sql);
				rs = pst.executeQuery();
				jTable.setModel(DbUtils.resultSetToTableModel(rs));
			}
			catch(Exception ex)
			{
				JOptionPane.showMessageDialog(null, ex.getMessage());
			}
		}
		private void FillComboBox()
		{

			try
			{
				String select_query = "select * from product ";
				pst = conn.prepareStatement(select_query);
				rs=pst.executeQuery();
				String[] checker = new String[30];
				int count = 0;
				Boolean permit = false;
				while(rs.next())
				{
					String str_category = rs.getString("category");
					comboBox.addItem(str_category);
					/*String str_category = rs.getString("category");
					for (int i = 0;i<count ;i++) 
					{
						if (!checker[i].equals(str_category)) 
						{
							permit= true;
						}						
					}
					if (permit=true) 
					{
						comboBox.addItem(str_category);
						checker[count] = str_category;
						count++;
					}
					else
					{

					}*/
					/*String str_category = rs.getString("category");
					int count=0;
					checker = str_category;
					String new_query = "select * from product where category='"+str_category+"' ";
					pst1 = conn.prepareStatement(new_query);
					rs1 = pst1.executeQuery();

					while(rs1.next())
					{
						checker = rs1.getString("category");
					}
					if(!(str_category.equals(checker)))
					{
						//JOptionPane.showMessageDialog(null, "Sorry! we cannot repeat");
					}
					else
					{
						comboBox.addItem(str_category);
					}*/
				}	
			}
			catch(Exception ex)
			{
				JOptionPane.showMessageDialog(null,ex);
			}
		}
		public void fetch_individual_Data()
		{
			try
			{
				//connection1();
				String sql = "select * from product where p_code ='"+t1.getText()+"' or category='"+comboBox.getSelectedItem().toString()+"'";
				pst = conn.prepareStatement(sql);
				rs = pst.executeQuery();
				jTable.setModel(DbUtils.resultSetToTableModel(rs));
			}
			catch(Exception ex)
			{
				JOptionPane.showMessageDialog(null, ex.getMessage());
			}
		}
		public void fetch_all_Data()
		{
			try
			{
				//connection1();
				String sql = "select * from product where p_code ='"+t1.getText()+"' and category='"+comboBox.getSelectedItem().toString()+"'";
				pst = conn.prepareStatement(sql);
				rs = pst.executeQuery();
				jTable.setModel(DbUtils.resultSetToTableModel(rs));
			}
			catch(Exception ex)
			{
				JOptionPane.showMessageDialog(null, ex.getMessage());
			}
		}
	public void gui()
	{
		f3 = new Frame("Search Product");
		f3.addWindowListener(this);
		f3.setBackground(Color.WHITE);

		panel = new JPanel();
		panel.setBackground(Color.GRAY);
		panel.setBounds(5,40,950,80);

		
		jTable = new JTable();
		//jTable.setPreferredScrollableViewportSize(new Dimension(450,63));
		jTable.setBounds(40,250,400,100);
		panel2 = new JPanel();
		panel2.setBackground(Color.GRAY);
		panel2.setBounds(40,250,600,100);
		panel2.add(jTable);
		panel2.setLayout(new FlowLayout(FlowLayout.LEFT));
		scroll.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);
		scroll.setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_ALWAYS);
		scroll.setViewportView(panel2);
		scroll.setPreferredSize(new Dimension(600,90));
		scroll.setBounds(40,250,560,100);
		f3.add(scroll);


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
						f3.dispose();
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
						f3.dispose();
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
						f3.dispose();
						registerProduct regP = new registerProduct();
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
						f3.dispose();
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
						f3.dispose();
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
						f3.dispose();
						registerCustomer regP = new registerCustomer();
					}
					catch(Exception ex)
					{
						JOptionPane.showMessageDialog(null,ex);
					}
				}
			});
		fn = new Font("Arial",Font.BOLD,25);
		lb1 = new Label("Search Product Details");
		lb1.setForeground(Color.white);
		lb1.setFont(fn);
		lb1.setBounds(10,40,80,25);

		fn2 = new Font("Arial",Font.PLAIN,14);
		lb2 = new Label("Search By");
		lb2.setFont(fn2);
		lb2.setBounds(40,170,70,20);
		lb2.setForeground(Color.black);

		comboBox = new JComboBox();
		comboBox.setBounds(115,170,100,20);
		f3.add(comboBox);


		

		t1 = new JTextField("");
		t1.setBounds(220,170,170,22);

		bt1 = new JButton("Find");
		bt1.setBackground(Color.GRAY);
		bt1.setForeground(Color.WHITE);
		bt1.setBounds(395,170,95,22);

		bt2 = new JButton("Show All");
		bt2.setBackground(Color.GRAY);
		bt2.setForeground(Color.WHITE);
		bt2.setBounds(505,170,95,22); 

		bt3 = new JButton("< Go Home");
		bt3.setBackground(Color.GRAY);
		bt3.setForeground(Color.WHITE);
		bt3.setBounds(820,400,100,20);

		JLabel lb_img1 = new JLabel(new ImageIcon("A:/IV_semester/Java_lab/CIA 3/imgs/management3.png"));
    	//lb_img1.setLayout(null);
		lb_img1.setBounds(650,150,260,200);
    	//lb_img1.setSize(650,400);

		bt1.addActionListener(new ActionListener()
			{
				public void actionPerformed(ActionEvent e2)
				{
					try
					{
						if (t1.getText().equals("")) 
						{
							//show_Product_In_JTable() if the textField is not entered;
							String sql="select * from product where category='"+comboBox.getSelectedItem().toString()+"'";
    		        		pst = conn.prepareStatement(sql);
        		    		//pst.setString(1, t1.getText());
            				rs= pst.executeQuery();
            				if(rs.next())
            				{
	            				fetch_individual_Data();
	    	        		}
		            		else
        	    			{
	    	    	    		JOptionPane.showMessageDialog(null,"Product is not available in our database!");
            				}
						}
						else
						{
							//show_Product_In_JTable() if the textField is entered;
							String sql="select * from product where p_code='"+t1.getText()+"' and category='"+comboBox.getSelectedItem().toString()+"'";
	    	        		pst = conn.prepareStatement(sql);
    	    	    		//pst.setString(1, t1.getText());
        	    			rs= pst.executeQuery();
            				if(rs.next())
            				{
	            				fetch_all_Data();
    	        			}
		            		else
    	    	    		{
	    	    	    		JOptionPane.showMessageDialog(null,"Product '"+t1.getText()+"' of category '"+comboBox.getSelectedItem().toString()+"' is not available in our database!");
            				}
						}				
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
						fetch_Data();
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
						f3.dispose();
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

		f3.setMenuBar(mb);
		panel.add(lb1);
		f3.add(panel);

		f3.add(lb2);		

		f3.add(t1);

		f3.add(bt1);
		f3.add(bt2);
		f3.add(bt3);

		f3.add(lb_img1);

		f3.setLayout(null);
		f3.setVisible(true);
		f3.setSize(950,450);
	}
	
	public static void main(String[] args)
	{
		new searchProduct();
	}
}




/*

String select_query = "select * from product ";
				pst = conn.prepareStatement(select_query);
				rs=pst.executeQuery();
				String checker ="";
				//int count = 0;
				while(rs.next())
				{
					
					String str_category = rs.getString("category");
					int count=0;
					checker = str_category;
					String new_query = "select * from product where category='"+str_category+"' ";
					pst1 = conn.prepareStatement(new_query);
					rs1 = pst1.executeQuery();

					while(rs1.next())
					{
						checker = rs1.getString("category");
					}
					if(!(str_category.equals(checker)))
					{
						//JOptionPane.showMessageDialog(null, "Sorry! we cannot repeat");
					}
					else
					{
						comboBox.addItem(str_category);
					}





*/