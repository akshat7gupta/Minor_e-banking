/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ebanking;
import java.sql.*;
public class conn_class {
    Connection c;
    Statement s;
    public conn_class()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            c = DriverManager.getConnection("jdbc:mysql://localhost/e_banking","root","0");
            s = c.createStatement();
            
            
            
        }catch(Exception e){
            System.out.println(e);
        }
    }
}
