package bin;

import java.io.Serializable;

public class Khoa implements Serializable {
    private int ma_khoa;
    private String ten_khoa;
    private int nam_tl;
    private String tr_khoa;

    public Khoa() {
    }

    public Khoa(int ma_khoa, String ten_khoa, int nam_tl, String tr_khoa) {
        this.ma_khoa = ma_khoa;
        this.ten_khoa = ten_khoa;
        this.nam_tl = nam_tl;
        this.tr_khoa = tr_khoa;
    }

    public int getMa_khoa() {
        return ma_khoa;
    }

    public void setMa_khoa(int ma_khoa) {
        this.ma_khoa = ma_khoa;
    }

    public String getTen_khoa() {
        return ten_khoa;
    }

    public void setTen_khoa(String ten_khoa) {
        this.ten_khoa = ten_khoa;
    }

    public int getNam_tl() {
        return nam_tl;
    }

    public void setNam_tl(int nam_tl) {
        this.nam_tl = nam_tl;
    }

    public String getTr_khoa() {
        return tr_khoa;
    }

    public void setTr_khoa(String tr_khoa) {
        this.tr_khoa = tr_khoa;
    }
}
