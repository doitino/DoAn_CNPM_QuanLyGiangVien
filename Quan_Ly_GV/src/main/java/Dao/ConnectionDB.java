package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionDB {
    static Connection con ;

    public static Statement connect() throws  ClassNotFoundException , SQLException {
        if(con == null || con.isClosed()){
            Class.forName("com.mysql.jdbc.Driver");
            con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
            if(con!=null) System.out.println("da ket noi");
            return con.createStatement();
        }
        else
            return con.createStatement();

    }
}
