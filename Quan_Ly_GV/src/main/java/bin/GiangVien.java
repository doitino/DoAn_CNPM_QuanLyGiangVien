package bin;

import java.io.Serializable;

public class GiangVien implements Serializable {
    private int ma_gv;
    private String ten_gv;
    private String ngay_sinh;
    private String gioi_tinh;
    private int ma_khoa;
    private String hoc_vi;

    public GiangVien() {
    }

    public GiangVien(int ma_gv, String ten_gv, String ngay_sinh, String gioi_tinh, int ma_khoa, String hoc_vi) {
        this.ma_gv = ma_gv;
        this.ten_gv = ten_gv;
        this.ngay_sinh = ngay_sinh;
        this.gioi_tinh = gioi_tinh;
        this.ma_khoa = ma_khoa;
        this.hoc_vi = hoc_vi;
    }

    public int getMa_gv() {
        return ma_gv;
    }

    public void setMa_gv(int ma_gv) {
        this.ma_gv = ma_gv;
    }

    public String getTen_gv() {
        return ten_gv;
    }

    public void setTen_gv(String ten_gv) {
        this.ten_gv = ten_gv;
    }

    public String getNgay_sinh() {
        return ngay_sinh;
    }

    public void setNgay_sinh(String ngay_sinh) {
        this.ngay_sinh = ngay_sinh;
    }

    public String getGioi_tinh() {
        return gioi_tinh;
    }

    public void setGioi_tinh(String gioi_tinh) {
        this.gioi_tinh = gioi_tinh;
    }

    public int getMa_khoa() {
        return ma_khoa;
    }

    public void setMa_khoa(int ma_khoa) {
        this.ma_khoa = ma_khoa;
    }

    public String getHoc_vi() {
        return hoc_vi;
    }

    public void setHoc_vi(String hoc_vi) {
        this.hoc_vi = hoc_vi;
    }
}
