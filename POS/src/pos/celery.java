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
public class celery {
    
    public static void main(String[] args){
        // TODO code application logic here
    Scanner in = new Scanner(System.in);
    System.out.println("EmpID");
    int Empid = in.nextInt();
    System.out.println("EmpFname");
    String EmpFname = in.next();
    System.out.println("EmpLname");
    String EmpLname = in.next();
    System.out.println("EmpRank");
    int EmpRank = in.nextInt();
    System.out.println("Position");
    Double Salary;
    if(EmpRank == 1){
        Salary = 25000.0;
    }
    else if(EmpRank == 2){
        Salary = 15000.0;
    }
    else if(EmpRank == 3){
        Salary = 12000.0;
    }
    else{
        Salary = 0.0;
    }
    String Position = in.next();
    System.out.println("Department");
    String Department = in.next();
    insert(Empid,EmpFname,EmpLname,EmpRank,Position,Department,Salary);
    
    }
    static void insert(int Empid,String EmpFname,String EmpLname,int EmpRank,
            String Position,String Department,Double Salary){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost/celery","root","")) {
                Statement st = con.createStatement();
                String sql = "insert into ctable values ("+ Empid +",'"+ EmpFname
                        +"','"+
                        EmpLname +"',"+ EmpRank +",'"+ Position +"','"+Department+
                        "',"+Salary+")";
                System.out.println(sql);
                st.executeUpdate(sql);
                con.close();
            } 
        }catch(Exception e){System.out.print(e);}
    }
    
}
