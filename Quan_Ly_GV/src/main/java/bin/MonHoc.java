package bin;

public class MonHoc {
    private int ma_mh;
    private String ten_mh;
    private int so_tin_chi_lt;
    private int so_tin_chi_th;
    private String tg_bd;
    private String tg_kt;

    public MonHoc() {
    }

    public MonHoc(int ma_mh, String ten_mh, int so_tin_chi_lt, int so_tin_chi_th, String tg_bd, String tg_kt) {
        this.ma_mh = ma_mh;
        this.ten_mh = ten_mh;
        this.so_tin_chi_lt = so_tin_chi_lt;
        this.so_tin_chi_th = so_tin_chi_th;
        this.tg_bd = tg_bd;
        this.tg_kt = tg_kt;
    }

    public int getMa_mh() {
        return ma_mh;
    }

    public void setMa_mh(int ma_mh) {
        this.ma_mh = ma_mh;
    }

    public String getTen_mh() {
        return ten_mh;
    }

    public void setTen_mh(String ten_mh) {
        this.ten_mh = ten_mh;
    }

    public int getSo_tin_chi_lt() {
        return so_tin_chi_lt;
    }

    public void setSo_tin_chi_lt(int so_tin_chi_lt) {
        this.so_tin_chi_lt = so_tin_chi_lt;
    }

    public int getSo_tin_chi_th() {
        return so_tin_chi_th;
    }

    public void setSo_tin_chi_th(int so_tin_chi_th) {
        this.so_tin_chi_th = so_tin_chi_th;
    }

    public String getTg_bd() {
        return tg_bd;
    }

    public void setTg_bd(String tg_bd) {
        this.tg_bd = tg_bd;
    }

    public String getTg_kt() {
        return tg_kt;
    }

    public void setTg_kt(String tg_kt) {
        this.tg_kt = tg_kt;
    }
}
