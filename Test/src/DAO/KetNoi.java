/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
import java.sql.*;
/**
 *
 * @author Mrs.Nhung
 */
public class KetNoi {
   static String connurl="jdbc:sqlserver://DESKTOP-ADQLGNR\\MRSNHUNG:1433;databaseName=QuanLyThuVien;user=sa;password=123456;encrypt=false";
   static Connection conn;
   //PHƯƠN THỨC MỞ KẾT NỐI
   public static boolean open(){
       try {
           if(conn==null||conn.isClosed())
           conn=DriverManager.getConnection(connurl);
       } catch (Exception e) {
           e.printStackTrace();
           return false;
       }
       return true;
   }
   
   //PHƯƠNG THỨC ĐÓNG KẾT NÓI
   public static boolean close(){
       try {
           if(conn!=null)
               conn.close();
           
       } catch (Exception e) {
           e.printStackTrace();
           return false;
       }
       return true;
   }
             
}
