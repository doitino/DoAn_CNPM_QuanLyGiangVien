package model;

import Dao.ConnectionDB;
import bin.GiangVien;
import bin.Khoa;
import bin.MonHoc;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class MonHocEntity {

    //Lấy ra tất cả Khoa trong database
    public static List<MonHoc> getAll() {
        List<MonHoc> re;
        Statement st = null;
        try {
            st = ConnectionDB.connect();
            ResultSet rs = st.executeQuery("SELECT m.ma_mh,m.ten_mh,m.so_tin_chi_lt,m.so_tin_chi_th,g.tg_bd,g.tg_kt FROM `giang_day` g join `mon_hoc` m where m.ma_mh=g.ma_mh");
            re = new LinkedList<>();
            while (rs.next()) {

                re.add(new MonHoc(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getString(5),
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
    public static List<MonHoc> getAll_MH(int name ) {
        List<MonHoc> re;
        PreparedStatement st = null;
        try {
            String sql = "SELECT m.ma_mh,m.ten_mh,m.so_tin_chi_lt,m.so_tin_chi_th,g.tg_bd,g.tg_kt FROM `giang_day` g join `mon_hoc` m join `giang_vien` gv where g.ma_gv= ? and g.ma_mh=m.ma_mh";
            st = ConnectionDB.connect(sql);
            st.setInt(1, name );
            System.out.println(sql);
            ResultSet rs = st.executeQuery();
            re = new LinkedList<>();
            while (rs.next()) {
                re.add(new MonHoc(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getString(5),
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
    public static List<MonHoc> getSearchMonHoc(String name ) {
        List<MonHoc> re;
        PreparedStatement st = null;
        try {
            String sql = "select * from mon_hoc where ten_mh like ? or ma_mh like ?";
            st = ConnectionDB.connect(sql);
            st.setString(1, "%" + name + "%");
            st.setString(2, "%" + name + "%");
            System.out.println(sql);
            ResultSet rs = st.executeQuery();
            re = new LinkedList<>();
            while (rs.next()) {
                re.add(new MonHoc(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getString(5),
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

