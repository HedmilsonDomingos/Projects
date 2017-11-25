import javax.swing.*; 
import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.CardLayout;
import java.awt.GridBagLayout;
import javax.swing.BoxLayout;
import javax.swing.GroupLayout;
import javax.swing.ScrollPaneLayout;



public class UserLogin extends JPanel{ 
JFrame frame; 
JPanel labelpane,titelpane,fieldpane; 
JLabel lbl_name,lbl_password,lbl_titel; 
JTextField txt_name,txt_password; 
public void init(){ 
lbl_name=new JLabel("User Name :"); 
lbl_password=new JLabel("Password :"); 
labelpane=new JPanel(new GridLayout(8,1,18,12)); 
//labelpane.setBackground(Color.white); 
labelpane.add(lbl_name); 
labelpane.add(lbl_password); 

//Font ft = new Font("Times New Roman",Font.BOLD,18);
lbl_titel=new JLabel("Scorer Login"); 
//lbl_titel.setForeground(Color.blue); 
//lbl_titel.setFont(ft); 
titelpane=new JPanel(); 
//titelpane.setBackground(Color.white); 
titelpane.add(lbl_titel); 

fieldpane=new JPanel(new GridLayout(8,3,18,12)); 
//fieldpane.setBackground(Color.white); 
txt_name=new JTextField(10); 
//txt_name.setPreferredSize(new Dimension(80, 20)); 
txt_password=new JPasswordField(); 
fieldpane.add(txt_name); 
fieldpane.add(txt_password); 


frame=new JFrame(); 
frame.getContentPane().setLayout(new BorderLayout()); 
frame.getContentPane().add(labelpane,BorderLayout.WEST); 
frame.getContentPane().add(titelpane,BorderLayout.NORTH); 
frame.getContentPane().add(fieldpane,BorderLayout.CENTER); 
frame.setTitle("Cricket Management Portal");; 
frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); 
//frame.setSize(new Dimension(400,300));
frame.setSize(400,300); 
frame.setVisible(true); 
} 

public static void main(String...a){ 
new UserLogin().init(); 

} 

} 