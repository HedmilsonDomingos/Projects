		/*JPanel panel2 = new JPanel();
		for (int i = 0;i<10 ;i++ ) 
		{
			panel2.add(new JButton("Hey man!"+i));			
		}
		JScrollPane scrollPane = new JScrollPane(panel2);
		scrollPane.setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		scrollPane.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_NEVER);
		scrollPane.setBounds(40,250,500,100);
		JPanel contentPane = new JPanel(null);
		contentPane.add(scrollPane);
		f3.setContentPane(contentPane);*/
   
 
		// Code for JTable
		/*String[] columns = {"P. Code", "P. Name", "Category","Supplier","Quantity", "Cost", "Price","Tax","PBT","PAT"};
		String[][] data = { {"1001","iPhone 6s", "Cell phone","Apple","50", "600","700","10","5000", "4500"},
							{"1002","CRF", "Motobike","Honda","10", "11000","15000","11","40000", "35600"},
							{"1003","Maria Light", "Biscuit","Sunfast","10000", "7","10","2","30000", "29400"},
							{"1001","iPhone 6s", "Cell phone","Apple","50", "600","700","10","5000", "4500"},
							{"1002","CRF", "Motobike","Honda","10", "11000","15000","11","40000", "35600"},
							{"1003","Maria Light", "Biscuit","Sunfast","10000", "7","10","2","30000", "29400"}};*/
		











		//jTable.setBackground(Color.BLUE);
		//jTable.setFillsViewportHeight(true); // or setVisible(true);

		//f3.add(jTable);

		//scroll.setBounds(115,340,20,70);
















		/*
		CheckBoxGroup cbg = new CheckBoxGroup();
		CheckBox c1 = new CheckBox("Male", cbg , false);
		c1.setForeground(Color.BLACK);
		c1.setBackground(Color.WHITE);
		c1.setBounds(150,270,60,20);
		CheckBox c2 = new CheckBox("Female", cbg , false);
		c2.setForeground(Color.BLACK);
		c2.setBackground(Color.WHITE);
		c2.setBounds(250,270,60,20);
		f6.add(c1);
		f6.add(c2);*/
		










		/*String tb_data[][]={ {"101","Amit","670000"},    
                          {"102","Jai","780000"},    
                          {"101","Sachin","700000"}};    
    	String tb_column[]={"ID","NAME","SALARY"};         
	    JTable jt=new JTable(tb_data,tb_column);    
    	//jt.setBounds(40,360,560,70);          
    	JScrollPane sp=new JScrollPane(jt);

    	panel3 = new JPanel();
    	panel3.setBackground(Color.GRAY);
    	panel3.add(sp);
    	panel3.setBounds(40,360,560,50);*/
    	//sp.setViewportView(panel3);
    	//sp.setBounds(40,360,560,50);

    	//f3.add(panel3);
		/*JScrollBar s = new JScrollBar();
		s.setBounds(115,340,20,70);
		jTable.add(s);*/

/*
		String data[][]={ {"101","Amit","670000"},    
                          {"102","Jai","780000"},    
                          {"101","Sachin","700000"}};    
   		String column[]={"ID","NAME","SALARY"};         
    	JTable jt=new JTable(data,column);    
    	jt.setBounds(115,250,200,300);          
    	JScrollPane sp=new JScrollPane(jt);    
    	f3.add(jt); 
*/























		/*c = new Choice();
		c.setBounds(115,170,100,20);
		c.add("Bicylce");
		c.add("Motobike");*/

		/*comboBox = new JComboBox();
		comboBox.setBounds(115,170,100,20);
		//f3.add(comboBox);
		try
		{
			//sql_connect();
			conn = DriverManager.getConnection("jdbc:mysql://localhost/sonoo","root","heddyshost");
			st = conn.createStatement();
			String select_query = "select * from product ";
			rs = st.executeQuery(select_query);
			while(rs.next())
			{
				comboBox.addItem(rs.getString(1));
			}
		}
		catch(Exception ex)
		{
			JOptionPane.showMessageDialog(null,ex);
		}
		finally
		{
			try
			{
				st.close();
				rs.close();
				conn.close();
			}
			catch(Exception ex)
			{
				JOptionPane.showMessageDialog(null,"Error while Closing");
			}

		}
		panel4 = new JPanel();
		panel4.add(comboBox);
		panel4.setBounds(115,170,100,20);
 		f3.add(panel4);*/





















// Function to return Product arrayList
	/*QUERY FOR SEARCH --> "SELECT * FROM `product` WHERE CONCAT(`id`,`fname`,`lname`,`age`,) LIKE '%"+ValueToSearch+"' ";  */
	
	/*public ArrayList<Product> getProductList()
	{ 
		ArrayList<Product> productList = new ArrayList<Product>();
		Connection con = getConnection();

		String query = "select * from `product`";
		Statement st;
		ResultSet rs;

		try
		{
			st = con.createStatement();
			rs = st.executeQuery(query);

			Product product;

			while(rs.next())
			{
				product = new Product(
						rs.getInt("p_code"),
						rs.getString("p_name"),
						rs.getString("category"),
						rs.getString("supplier"),
						rs.getInt("quantity"),
						rs.getFloat("cost"),
						rs.getFloat("price"),
						rs.getInt("tax"),
						rs.getFloat("profit_before_tax"),
						rs.getFloat("profit_after_tax")
						);
				productList.add(product);
			}
		}
		catch(Exception ex)
		{
			JOptionPane.showMessageDialog(null, ex.getMessage());
		}
		return productList;

	}

	// Display data in JTable

	public void show_Product_In_JTable()
	{
		ArrayList<Product> list = getProductList();
		DefaultTableModel model = (DefaultTableModel)jTable.getModel();
		Object[] row = new Object[10];

		for(int i = 0;i < list.size(); i++)
		{
			row[0] = list.get(i).getP_code();
			row[1] = list.get(i).getP_name();
			row[2] = list.get(i).getCategory();
			row[3] = list.get(i).getSupplier();
			row[4] = list.get(i).getQuantity();
			row[5] = list.get(i).getCost();
			row[6] = list.get(i).getPrice();
			row[7] = list.get(i).getTax();
			row[8] = list.get(i).getPBT();
			row[9] = list.get(i).getPAT();
			model.addRow(row);
		}
	}*/

	/*public ArrayList<Product> productList = new ArrayList<Product>()
	{
		Statement st;
		ResultSet rs;
 
		try
		{
			Connection con = getConnection();
			st = con.createStatement();
			String searchQuery ="SELECT * FROM `product` WHERE p_code='"+t1.getText()+"' ";

			rs = st.executeQuery(searchQuery);

			Product product;

			while(rs.next())
			{
				product = new Product(
						rs.getInt("p_code"),
						rs.getString("p_name"),
						rs.getString("category"),
						rs.getString("supplier"),
						rs.getInt("quantity"),
						rs.getFloat("cost"),
						rs.getFloat("price"),
						rs.getInt("tax"),
						rs.getFloat("profit_before_tax"),
						rs.getFloat("profit_after_tax")
						);
				productList.add(product);
			}
		}
		catch(Exception ex)
		{
			JOptionPane.showMessageDialog(null, ex.getMessage());
		}
		return productList;
	}*/

	// This function is to display info in JTable
	/*public void findProduct()
	{
		ArrayList<Product> product = ListProduct(JTextField.getText());
		DefaultTableModel model = new DefaultTableModel();
		model.setColumnIdentifiers(new Object[]{"Product Code","Product Name","Category","Supplier","Quantity","Cost","Price","Tax %","PBT","PAT"});
		Object[] row = new Object[10];

		for(int i = 0;i < product.product.size(); i++
		{
			row[0] = product.get(i).getP_code();
			row[1] = product.get(i).getP_name();
			row[2] = product.get(i).getCategory();
			row[3] = product.get(i).getSupplier();
			row[4] = product.get(i).getQuantity();
			row[5] = product.get(i).getCost();
			row[6] = product.get(i).getPrice();
			row[7] = product.get(i).getTax();
			row[8] = product.get(i).getPBT();
			row[9] = product.get(i).getPAT();
			model.addRow(row);
		}
		jTable_product.setModel(model);
	}*/

	// SETTING UP THE CONNECTION

	// number 2
	/*public void connection()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
		}
		catch(Exception ex)
		{
			JOptionPane.showMessageDialog(null, ex.getMessage());
		}
	}

	public void connection1()
	{
		try
		{
			connection();
			Connection con = DriverManager.getConnection(host,username,password);
			st = con.createStatement();
		}
		catch(Exception ex)
		{
			JOptionPane.showMessageDialog(null, ex.getMessage());
		}
	}*/
/*
	public Connection getConnection()
	{
		Connection con = null;
		try
		{
			//Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/sonoo","root","heddyshost");
			//st = con.createStatement();
			return con;
		}
		catch(Exception ex)
		{
			JOptionPane.showMessageDialog(null, ex.getMessage());
			return null;
		}
		
	}*/

	// numner 2
	/*public void fetch_Data()
	{
		try
		{
			connection1();
			String sql = "select * from product";
			rs = st.executeQuery(sql);

			jTable.setModel(DbUtils.resultSetToTableModel(rs));
		}
		catch(Exception ex)
		{
			JOptionPane.showMessageDialog(null, ex.getMessage());
		}
	}*/

	/*public void theQuery(String query)
	{
		Connection con = null;
		Statement st = null;
		try
		{
			con = DriverManager.getConnection("jdbc:mysql://localhost/sonoo","root","heddyshost");
			st = con.createStatement();
			st.executeUpdate(query);
			JOptionPane.showMessageDialog(null, "Query executed");
		}
		catch(Exception ex)
		{
			JOptionPane.showMessageDialog(null, ex.getMessage());
		}
	}*/