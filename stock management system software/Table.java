import javax.swing.*;    
public class Table {    
    JFrame f;    
    Table(){    
    f=new JFrame();    
    String data[][]={ {"101","Amit","670000"},    
                          {"102","Jai","780000"},    
                          {"101","Sachin","700000"}};    
    String column[]={"ID","NAME","SALARY"};         
    JTable jt=new JTable(data,column);    
    jt.setBounds(115,250,300,70);          
    JScrollPane sp=new JScrollPane(jt);    
    f.add(sp);          
    f.setSize(950,450);    
    f.setVisible(true);    
}     
public static void main(String[] args) {    
    new Table();    
}    
} 