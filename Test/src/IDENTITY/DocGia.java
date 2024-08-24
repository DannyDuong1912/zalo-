/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package IDENTITY;

import java.util.Date;

/**
 *
 * @author Mrs.Nhung
 */
public class DocGia {
    protected String ma,ten,gioiTinh,diaChi,soDienThoai;
    protected Date ngaySinh;

    public DocGia() {
    }

    public DocGia(String ma, String ten, String gioiTinh, String diaChi, String soDienThoai, Date ngaySinh) {
        this.ma = ma;
        this.ten = ten;
        this.gioiTinh = gioiTinh;
        this.diaChi = diaChi;
        this.soDienThoai = soDienThoai;
        this.ngaySinh = ngaySinh;
    }

    public String getMa() {
        return ma;
    }

    public void setMa(String ma) {
        this.ma = ma;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(String gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(String soDienThoai) {
        this.soDienThoai = soDienThoai;
    }

    public Date getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    @Override
    public String toString() {
        return "DocGia{" + "ma=" + ma + ", ten=" + ten + ", gioiTinh=" + gioiTinh + ", diaChi=" + diaChi + ", soDienThoai=" + soDienThoai + ", ngaySinh=" + ngaySinh + '}';
    }
    
}
