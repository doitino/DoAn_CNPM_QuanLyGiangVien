package Dao;

import bin.GiangVien;
import bin.MonHoc;
import model.GiangVienEntity;
import model.MonHocEntity;

import java.sql.*;
import java.util.LinkedList;

public class ConnectionDB {
    static Connection con ;

//    public static Statement connect() throws  ClassNotFoundException , SQLException {
//        if(con == null || con.isClosed()){
//            Class.forName("com.mysql.jdbc.Driver");
//            con =  DriverManager.getConnection("jdbc:mysql://node268921-quanlygiaovu.j.layershift.co.uk/quanlygiaovu","root","DXOpdt79635");
//            if(con!=null) System.out.println("da ket noi");
//            return con.createStatement();
//        }
//        else
//            return con.createStatement();
//
//    }
//    public static PreparedStatement connect(String sql) throws ClassNotFoundException ,SQLException{
//        if(con==null || con.isClosed()){
//            Class.forName("com.mysql.jdbc.Driver");
//            con =  DriverManager.getConnection("jdbc:mysql://node268921-quanlygiaovu.j.layershift.co.uk/quanlygiaovu","root","DXOpdt79635");
//            return con.prepareStatement(sql);
//        }else{
//            return con.prepareStatement(sql);
//        }
//    }
public static Statement connect() throws  ClassNotFoundException , SQLException {
    if(con == null || con.isClosed()){
        Class.forName("com.mysql.jdbc.Driver");
        con =  DriverManager.getConnection("jdbc:mysql://remotemysql.com:3306/7KbF8ueuM1","7KbF8ueuM1","O7AxuQv9xP");
        if(con!=null) System.out.println("da ket noi");
        return con.createStatement();
    }
    else
        return con.createStatement();

}
    public static PreparedStatement connect(String sql) throws ClassNotFoundException ,SQLException{
        if(con==null || con.isClosed()){
            Class.forName("com.mysql.jdbc.Driver");
            con =  DriverManager.getConnection("jdbc:mysql://remotemysql.com:3306/7KbF8ueuM1","7KbF8ueuM1","O7AxuQv9xP");
            return con.prepareStatement(sql);
        }else{
            return con.prepareStatement(sql);
        }
    }


    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        ConnectionDB.connect();
        GiangVien g = new GiangVien(111,"aa","aa","aaaaaaa",117,"vvvv");
        GiangVienEntity.addone(g);
        System.out.print(GiangVienEntity.count());
    }
}
