package model;

import Dao.ConnectionDB;
import bin.GiangVien;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class GiangVienEntity {
    //Lấy ra tất cả sản phẩm trong database
    public static List<GiangVien> getAll() {
        List<GiangVien> re;
        Statement st = null;
        try {
            st = ConnectionDB.connect();
            ResultSet rs = st.executeQuery("select * from giang_vien");
            re = new LinkedList<>();
            while (rs.next()) {

                    re.add(new GiangVien(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getInt(5),
                            rs.getString(6)

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
    public static List<GiangVien> getSearchAll(String name ) {
        List<GiangVien> re;
        PreparedStatement st = null;
        try {
            String sql = "select * from giang_vien where ten_gv like ? or hoc_vi like ? or gioi_tinh like ?";
            st = ConnectionDB.connect(sql);
            st.setString(1, "%" + name + "%");
            st.setString(2, "%" + name + "%");
            st.setString(3, "%" + name + "%");
            System.out.println(sql);
            ResultSet rs = st.executeQuery();
            re = new LinkedList<>();
            while (rs.next()) {
                re.add(new GiangVien(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6)

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
