package Dao;

import bin.GiangVien;
import bin.MonHoc;
import model.GiangVienEntity;
import model.MonHocEntity;

import java.sql.*;
import java.util.LinkedList;

public class ConnectionDB {
    static Connection con ;

    public static Statement connect() throws  ClassNotFoundException , SQLException {
        if(con == null || con.isClosed()){
            Class.forName("com.mysql.jdbc.Driver");
            con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlygiaovu","root","");
            if(con!=null) System.out.println("da ket noi");
            return con.createStatement();
        }
        else
            return con.createStatement();

    }
    public static PreparedStatement connect(String sql) throws ClassNotFoundException ,SQLException{
        if(con==null || con.isClosed()){
            Class.forName("com.mysql.jdbc.Driver");
            con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlygiaovu","root","");
            return con.prepareStatement(sql);
        }else{
            return con.prepareStatement(sql);
        }
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        ConnectionDB.connect();
        GiangVien g = new GiangVien(1,"aa","aa","aaaaaaa",12,"vvvv");
        GiangVienEntity.addone(g);
    }
}
