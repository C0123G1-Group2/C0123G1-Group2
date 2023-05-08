package model;

public class Product {
    private int maSan;
    private String tenSan;
    private String loaiSan;
    private double gia;

    public Product() {
    }

    public Product(int maDV, String tenDV, String tenLoaiDV, double gia) {
        this.maSan = maDV;
        this.tenSan = tenDV;
        this.loaiSan = tenLoaiDV;
        this.gia = gia;
    }

    public int getMaSan() {
        return maSan;
    }

    public void setMaSan(int maSan) {
        this.maSan = maSan;
    }

    public String getTenSan() {
        return tenSan;
    }

    public void setTenSan(String tenSan) {
        this.tenSan = tenSan;
    }

    public String getLoaiSan() {
        return loaiSan;
    }

    public void setLoaiSan(String loaiSan) {
        this.loaiSan = loaiSan;
    }

    public double getGia() {
        return gia;
    }

    public void setGia(double gia) {
        this.gia = gia;
    }
}
