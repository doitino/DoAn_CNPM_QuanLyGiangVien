package model;

import Dao.ConnectionDB;
import bin.GiangVien;
import bin.Khoa;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class KhoaEntity {
    //Lấy ra tất cả Khoa trong database
    public static List<Khoa> getAll() {
        List<Khoa> re;
        Statement st = null;
        try {
            st = ConnectionDB.connect();
            ResultSet rs = st.executeQuery("select * from khoa");
            re = new LinkedList<>();
            while (rs.next()) {

                re.add(new Khoa(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4)
                ));
            }
            rs.close();
            st.close();

            return re ;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();

        }

    }
    public static List<Khoa> getSearchKhoa(String name ) {
        List<Khoa> re;
        PreparedStatement st = null;
        try {
            String sql = "select * from khoa where ten_khoa like ? or nam_tl like ? or ma_khoa like ?";
            st = ConnectionDB.connect(sql);
            st.setString(1, "%" + name + "%");
            st.setString(2, "%" + name + "%");
            st.setString(3, "%" + name + "%");
            System.out.println(sql);
            ResultSet rs = st.executeQuery();
            re = new LinkedList<>();
            while (rs.next()) {
                re.add(new Khoa(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4)
                ));
            }
            rs.close();
            st.close();
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();

        }
    }
}
