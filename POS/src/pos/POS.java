/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pos;

/**
 *
 * @author AICS-CEBU
 */
import java.util.Scanner;
import java.sql.*;
public class POS {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args){
        // TODO code application logic here
    Scanner in = new Scanner(System.in);
    System.out.println("ID");
    int uid = in.nextInt();
    System.out.println("First Name");
    String fname = in.next();
    System.out.println("Last Name");
    String lname = in.next();
    System.out.println("Address");
    String addr = in.next();
    insert(uid,fname,lname,addr);
    }
    static void insert(int uid,String fname,String lname,String addr){

        try{
            Class.forName("com.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost/pos","root","")) {
                Statement st = con.createStatement();
                String sql = "insert into emptornado valuse (" + uid + ",'"
                        + fname +"','"+ lname + "','"+ addr +"')";
                System.out.println(sql);
                st.executeUpdate(sql);
                con.close();
            }
        }catch(Exception e){System.out.print(e);}
        
    }
    
   
    
}
