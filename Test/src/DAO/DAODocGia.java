/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
import IDENTITY.DocGia;
import java.util.ArrayList;
import DAO.KetNoi;
import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import javax.swing.JOptionPane;
/**
 *
 * @author Mrs.Nhung
 */
public class DAODocGia {
    //Phương thức lấy danh sách độc giả
    ArrayList<DocGia> danhSachDocGia= new ArrayList<>();
    DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
    public ArrayList<DocGia> layDanhSachDocGia(){
        try {
            if(KetNoi.open()){
                PreparedStatement ps = KetNoi.conn.prepareStatement("select * from DocGia");
                ResultSet rs=ps.executeQuery();
                while(rs.next()){
                DocGia dg = new DocGia();
                dg.setMa(rs.getString(1));
                dg.setTen(rs.getString(2));
                dg.setNgaySinh(rs.getDate(3));
                dg.setGioiTinh(rs.getString(4));
                dg.setDiaChi(rs.getString(5));
                dg.setSoDienThoai(rs.getString(6));
                danhSachDocGia.add(dg);
                }
        }
        } catch (Exception e) {
            e.printStackTrace();
        }
    return danhSachDocGia;
    }
    
    //PHƯƠNG THỨC CHÈN (INSET) DỮ LIỆU VÀO DATABASE
    
    public boolean update(DocGia dg){
        if(KetNoi.open()){
            String sql="update DocGia set tendocgia=?,ngaysinh=?,gioitinh=?,diachi=?,sodienthoai=? where madocgia=?";
            try {
                PreparedStatement ps = KetNoi.conn.prepareStatement(sql);
                ps.setString(1, dg.getTen());
                ps.setDate(2, new Date(dg.getNgaySinh().getTime()));
                ps.setString(3, dg.getGioiTinh());
                ps.setString(4, dg.getDiaChi());
                ps.setString(5, dg.getSoDienThoai());
                ps.setString(6, dg.getMa());
                return (ps.executeUpdate()>0);
               
            } catch (Exception e) {
                e.printStackTrace();
            }
            
        }
        return false;
    }
    //PHƯƠNG THỨC THÊM MỘT ĐỘC GIẢ
    public boolean insert(DocGia dg){
        try {
            String sql="insert into DocGia values(?,?,?,?,?,?)";
            if(KetNoi.open()){
            PreparedStatement ps = KetNoi.conn.prepareStatement(sql);
            ps.setString(1,dg.getMa());
            ps.setString(2,dg.getTen());
            ps.setDate(3, new Date(dg.getNgaySinh().getTime()));
            ps.setString(4, dg.getGioiTinh());
            ps.setString(5, dg.getDiaChi());
            ps.setString(6, dg.getSoDienThoai());
            return(ps.executeUpdate()>0);
                    
            }
            
        } catch (Exception e) {
            e.printStackTrace();
            
        }
        return false;
    }
    //PHƯƠNG THỨC XÓA ĐỘC GIẢ
    public boolean delete(String ma){
     try {
            if(KetNoi.open()){
            PreparedStatement ps = KetNoi.conn.prepareStatement("delete DocGia where madocgia=?");
            ps.setString(1,ma);
            return (ps.executeUpdate()>0);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
