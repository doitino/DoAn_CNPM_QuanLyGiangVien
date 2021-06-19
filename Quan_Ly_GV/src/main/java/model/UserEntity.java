package model;

import Dao.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserEntity {
    public static boolean checkLogin(String username , String password){
        boolean check =false;
        PreparedStatement pre ;


        try {
            String sql ="select * from users where ten_tai_khoan =? and mat_khau =?";
            pre = ConnectionDB.connect(sql);
            pre.setString(1,username);
            pre.setString(2,password);
            ResultSet rs = pre.executeQuery();
            if(rs.next()){
                check = true;
            }else check=false;

            rs.close();
            pre.close();
        }

        catch (Exception e){
            e.printStackTrace();
        }
        return check;
    }
}
