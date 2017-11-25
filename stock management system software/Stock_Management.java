/*
	Author: Hedmilson Guimaraes Jose Domingos
	Roll no: 1541029
	Christ University
*/

import java.io.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.JFrame;
import java.sql.*;
import java.sql.DriverManager;


class store 
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
public class Stock_Management extends WindowAdapter
{
	Connection con = null;
	ResultSet RS = null;
	PreparedStatement PST = null;

	Frame f;
	Label lb1,lb2,lb3,lb4,lb5;
	JLabel background;
	JTextField t_username,t_password;
	JButton b1,b2;
	Image img;
	Stock_Management()
	{
		
		gui();
		con=store.ConnecrDb();
	}
	public void windowClosing(WindowEvent e)
	{
		f.dispose();
	}
	public void gui()
	{
		f = new Frame("Login");
		f.addWindowListener(this);
		f.setBackground(Color.WHITE);

		Font fn = new Font("TimesNewRoman",Font.PLAIN,16);
		Font fn2 = new Font("TimesNewRoman",Font.BOLD,25);
		f.setFont(fn);

		lb1 = new Label("Stock Management System");
		lb1.setForeground(Color.BLACK);
		lb1.setFont(fn2);
		lb1.setAlignment(Label.CENTER);
		lb1.setBounds(180,30,340,70);

		lb2 = new Label("Username:");
		lb2.setForeground(Color.BLACK);
		lb2.setBounds(140,160,80,25);
		lb3 = new Label("Password:");
		lb3.setForeground(Color.BLACK);
		lb3.setBounds(140,200,80,25);

		t_username = new JTextField("");
		t_username.setBounds(220,160,250,25); 
		t_password = new JPasswordField();
		t_password.setBounds(220,200,250,25);

		b1 = new JButton("Login");
		b1.setBounds(250,240,80,25);
		b2 = new JButton("Clear");
		b2.setBounds(360,240,80,25);


		b1.addActionListener(new ActionListener() 
		{  
            public void actionPerformed(ActionEvent e) 
            {
            	try
            	{
            		String sql="select * from users where username=? and password=? ";
            		PST = con.prepareStatement(sql);
            		PST.setString(1, t_username.getText());
            		PST.setString(2, t_password.getText());
            		RS= PST.executeQuery();
            		if(RS.next())
            		{
            			JOptionPane.showMessageDialog(null,"You have successfully logged in");
            			f.dispose();
            			mainFrame obj=new mainFrame();
            		}
            		else
            		{
            			JOptionPane.showMessageDialog(null,"Username or password is incorrect");
            		}
            	}
            	catch(Exception e1)
            	{
            		JOptionPane.showMessageDialog(null,e1);
            	}
            }
        });

        b2.addActionListener(new ActionListener()
        	{
        		public void actionPerformed(ActionEvent e2)
        		{
        			t_username.setText("");
        			t_password.setText("");
        		}
        	});

        f.add(lb1);
		f.add(lb2);
		f.add(lb3);

		f.add(t_username);
		f.add(t_password);

		f.add(b1);
		f.add(b2);

		f.setLayout(null);
		f.setVisible(true);
		f.setSize(650,400);

	}
	public static void main(String[] args)
	{
		new Stock_Management();
	}
}