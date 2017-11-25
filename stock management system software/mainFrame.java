import java.io.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.JFrame;
import java.sql.*;
import java.sql.DriverManager;

public class mainFrame extends WindowAdapter
{
	Frame f1;
	JButton b1;
	JLabel lb_img1;
	JTextField t1,t2,t3,t4,t5,t6,t7;

	public mainFrame()
	{
		gui();
	}
	public void windowClosing(WindowEvent e)
	{
		f1.dispose();
		Stock_Management obj = new Stock_Management();
	}
	public void gui()
	{
		f1 = new Frame("Stock Management System");
		f1.addWindowListener(this);
		f1.setBackground(Color.WHITE);

		MenuBar mb = new MenuBar();
		Menu menu = new Menu("Home");
		Menu menu1 = new Menu("Stock");
		Menu menu2 = new Menu("Customers");
		Menu submenu_custm = new Menu("Sub Menu");
		Menu menu3 = new Menu("Employees");
		Menu submenu_emp = new Menu("Sub Menu");
		Menu menu4 = new Menu("Help");
		Menu menu5 = new Menu("Quit");

		// Items for the first menu1
		MenuItem i1 = new MenuItem("Register Product");
		MenuItem i2 = new MenuItem("Search   Product");
		MenuItem i3 = new MenuItem("Update   Product");
		MenuItem i4 = new MenuItem("Delete   Product");

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
						f1.dispose();
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
						f1.dispose();
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
						f1.dispose();
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
						f1.dispose();
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
						f1.dispose();
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
						f1.dispose();
						registerCustomer regP = new registerCustomer();
					}
					catch(Exception ex)
					{
						JOptionPane.showMessageDialog(null,ex);
					}
				}
			});

		Font fn = new Font("Arial",Font.BOLD,14);
		JLabel lb1 = new JLabel("About The app! This application was developed by Hedmilson Domingos");
		lb1.setForeground(Color.GRAY);
		lb1.setFont(fn);
		lb1.setBounds(50,100,510,30);
		JLabel lb2 = new JLabel("Student of second year Christ University, the aim of this application");
		lb2.setForeground(Color.GRAY);
		lb2.setFont(fn);
		lb2.setBounds(50,130,500,20);
		JLabel lb3 = new JLabel("is to Store data of a small enterprise and help them to perform some");
		lb3.setForeground(Color.GRAY);
		lb3.setFont(fn);
		lb3.setBounds(50,160,500,20);
		JLabel lb4 = new JLabel("calculations, in order to know how much money they have to invest");
		lb4.setForeground(Color.GRAY);
		lb4.setFont(fn);
		lb4.setBounds(50,190,500,20);
		JLabel lb5 = new JLabel("and know the profit and losses of their business.");
		lb5.setForeground(Color.GRAY);
		lb5.setFont(fn);
		lb5.setBounds(50,220,500,20);


		JLabel lb_img1 = new JLabel(new ImageIcon("A:/IV_semester/Java_lab/CIA 3/imgs/stock.png"));
    	//lb_img1.setLayout(null);
		lb_img1.setBounds(590,100,300,300);

		b1 = new JButton("Cancel");
		b1.setBounds(790,405,100,25);
		f1.add(b1);
		b1.addActionListener(new ActionListener()
			{
				public void actionPerformed(ActionEvent e)
				{
					f1.dispose();
            		Stock_Management obj=new Stock_Management();
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

		f1.setMenuBar(mb);

		f1.add(lb_img1);

		f1.add(lb1);
		f1.add(lb2);
		f1.add(lb3);
		f1.add(lb4);
		f1.add(lb5);

		f1.setLayout(null);
		f1.setVisible(true);
		f1.setSize(950,450);

	}
	public static void main(String[] args)
	{
		new mainFrame();
	}
}