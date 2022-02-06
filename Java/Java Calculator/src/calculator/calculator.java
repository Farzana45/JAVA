/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package calculator;

import java.awt.BorderLayout;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

/**
 *
 * @author S M Faiaz Tamim
 */
public class calculator {
    public calculator()
    {
    JFrame f=new JFrame("Calc");
    f.setLocation(250,100);
    //east
    JLabel jcalc=new JLabel("Calculator");
    JPanel jpcalc=new JPanel();
    //center
    JLabel jfirstN=new JLabel("First NO");
    JLabel jSecondN=new JLabel("Second NO");
    JLabel jresult=new JLabel("Result");
    final JTextField jtext=new JTextField(5);
    final JTextField jtext1=new JTextField(5);
    final JTextField jresult1=new JTextField(10);
    
    JPanel jpcenter=new JPanel();
    JButton jbAdd =new JButton("Add");
    JButton jbMul =new JButton("Mul");
    JButton jbSub =new JButton("Sub");
    JButton jbDiv =new JButton("Div");
    JPanel jbButons=new JPanel();
    
    
    jpcalc.setLayout(new FlowLayout(FlowLayout.LEFT));
    jpcenter.setLayout(new GridLayout(3,2,1,4));
    
    jpcalc.add(jcalc);
    
    jpcenter.add(jfirstN);
    jpcenter.add(jtext);
    jpcenter.add(jSecondN);
    jpcenter.add(jtext1);
    jpcenter.add(jresult);
    jpcenter.add(jresult1);
    jbButons.add(jbAdd);
    jbButons.add(jbMul);
    jbButons.add(jbSub);
    jbButons.add(jbDiv);
    Container c=f.getContentPane();
    c.add(jpcalc,BorderLayout.NORTH);
    c.add(jpcenter,BorderLayout.CENTER);
    c.add(jbButons,BorderLayout.SOUTH);
    f.pack();
    f.setVisible(true);
    jbSub.addActionListener(new ActionListener(){ 
        public void actionPerformed(ActionEvent ae){
        int x=Integer.parseInt(jtext.getText());
        int y=Integer.parseInt(jtext1.getText());
        jresult1.setText(String.valueOf(x-y));
    }});
    jbAdd.addActionListener(new ActionListener(){ 
        public void actionPerformed(ActionEvent ae){
        int x=Integer.parseInt(jtext.getText());
        int y=Integer.parseInt(jtext1.getText());
        jresult1.setText(String.valueOf(x+y));
    }});
    jbMul.addActionListener(new ActionListener(){ 
        public void actionPerformed(ActionEvent ae){
        int x=Integer.parseInt(jtext.getText());
        int y=Integer.parseInt(jtext1.getText());
        jresult1.setText(String.valueOf(x*y));
    }});
    jbDiv.addActionListener(new ActionListener(){ 
        public void actionPerformed(ActionEvent ae){
        int x=Integer.parseInt(jtext.getText());
        int y=Integer.parseInt(jtext1.getText());
        jresult1.setText(String.valueOf(x/y));
    }});
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        new calculator();// TODO code application logic here
    }
    
}
