package model;

import Dao.ConnectionDB;
import bin.GiangVien;

import java.sql.*;
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
    public static List<GiangVien> getTrKhoa( ) {
        List<GiangVien> re;
        PreparedStatement st = null;
        try {
            String sql = "select  gv.ma_gv,gv.ten_gv,gv.ngay_sinh,gv.gioi_tinh, gv.ma_khoa,gv.hoc_vi from giang_vien gv join khoa k where k.truong_khoa like gv.ten_gv ";
            st = ConnectionDB.connect(sql);
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
    // Thêm 1 sản phẩm vào database
    public static int addone(GiangVien gv){
        PreparedStatement pre = null;
        try {
            String sql ="insert into giang_vien (ma_gv,ten_gv,ngay_sinh,gioi_tinh,ma_khoa,hoc_vi) values (?,?,?,?,?,?)" ;
            pre= ConnectionDB.connect(sql);
            pre.setInt(1,gv.getMa_khoa());
            pre.setString(2,gv.getTen_gv());
            pre.setString(3,gv.getNgay_sinh());
            pre.setString(4,gv.getGioi_tinh());
            pre.setInt(5,gv.getMa_khoa());
            pre.setString(6,gv.getHoc_vi());
            pre.executeUpdate();

            return 0;
        } catch (ClassNotFoundException classNotFoundException) {
            classNotFoundException.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return 0;
    }
}
