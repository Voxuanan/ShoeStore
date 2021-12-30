package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import bean.KhachHang;

public class KhachHangDAO {
	public ArrayList<KhachHang> getKhachHang(String un, String pass) throws Exception {
		 ArrayList<KhachHang> ds = new ArrayList<KhachHang>();
		 DungChung dc= new DungChung();
		 dc.KetNoi();
	        
	            String sql="SELECT * FROM KhachHang WHERE tenDangNhap = ? AND matKhau = ?";
	 		   	PreparedStatement stmt= dc.cn.prepareStatement(sql);
	 		   	stmt.setString(1,un);
				stmt.setString(2,pass);	
	 		   	ResultSet rs= stmt.executeQuery(); 

	            while (rs.next()) {
	            	long maKH = rs.getLong(1);
					String hoTen = rs.getString(2);
					String diaChi = rs.getString(3);
					long soDienThoai = rs.getLong(4);
					String email = rs.getString(5);
					String tenDangNhap = rs.getString(6);
					String matKhau = rs.getString(7);
					ds.add(new KhachHang(maKH,hoTen,diaChi,soDienThoai,email,tenDangNhap,matKhau));
	            }
	            rs.close();
	            dc.cn.close();
		 
		 return ds;
	}
	
	public ArrayList<KhachHang> getTatCaKhachHang() throws Exception{
		 ArrayList<KhachHang> ds = new ArrayList<KhachHang>();
		 DungChung dc= new DungChung();
		 dc.KetNoi();
				Statement stmt = dc.cn.createStatement();
	            String SQL = "SELECT * FROM KhachHang";
	            ResultSet rs = stmt.executeQuery(SQL);

	            while (rs.next()) {
	            	long maKH = rs.getLong(1);
					String hoTen = rs.getString(2);
					String diaChi = rs.getString(3);
					long soDienThoai = rs.getLong(4);
					String email = rs.getString(5);
					String tenDangNhap = rs.getString(6);
					String matKhau = rs.getString(7);
					ds.add(new KhachHang(maKH,hoTen,diaChi,soDienThoai,email,tenDangNhap,matKhau));
	            }
	            rs.close();
	            dc.cn.close();
		 return ds;
	}

	public boolean daTonTai(String un,String email) throws Exception {
		 ArrayList<KhachHang> ds = new ArrayList<KhachHang>();
		 DungChung dc= new DungChung();
		 dc.KetNoi();
	            String sql="SELECT * FROM KhachHang WHERE tenDangNhap = ? OR email = ?";
	 		   	PreparedStatement stmt= dc.cn.prepareStatement(sql);
	 		   	stmt.setString(1, un);
	 		    stmt.setString(2, email);
	 		   	ResultSet rs= stmt.executeQuery(); 
	 		   	boolean ok = false;
	            while (rs.next()) {
	            	ok = true;
	            }
	            rs.close();
	            dc.cn.close();
		
		 return ok;
	}
	
	public boolean DangKy(String hoTen, String diaChi, Long soDienThoai,String email, String tenDangNhap, String matKhau ) throws Exception {
		 ArrayList<KhachHang> ds = new ArrayList<KhachHang>();
		 DungChung dc= new DungChung();
		 dc.KetNoi();
	        
		 
	     String sql="INSERT INTO KhachHang\r\n"
	     		+ "                  (hoTen, diaChi, soDienThoai, email, tenDangNhap, matKhau)\r\n"
	     		+ "VALUES (?,?,?,?,?,?)";
	     PreparedStatement stmt= dc.cn.prepareStatement(sql);
	     stmt.setString(1, hoTen);
	     stmt.setString(2, diaChi);
	     stmt.setLong(3, soDienThoai);
	     stmt.setString(4, email);
	     stmt.setString(5, tenDangNhap);
	     stmt.setString(6, matKhau);
	 
	     boolean ok=true;
	     int n= stmt.executeUpdate(); 
	     if (n == 0)
				ok= false;
	     dc.cn.close();
		 return ok;
	}
	
	public void SuaKhachHang(long maKH, String tenKH, String tenDN, String matKhau, String diaChi, Long sdt, String Email) throws Exception {
		DungChung dc= new DungChung();
		 dc.KetNoi();
		 
		  
		  String sql1="UPDATE KhachHang\r\n"
		  		+ "SET          hoTen = ?, diaChi = ?, soDienThoai = ?, email = ?, tenDangNhap = ?, matKhau = ?  WHERE maKH = ?";
		   	PreparedStatement stmt1= dc.cn.prepareStatement(sql1);
		   	stmt1.setString(1, tenKH);
		   	stmt1.setString(2, diaChi);
		   	stmt1.setLong(3, sdt);
		   	stmt1.setString(4, Email);
		   	stmt1.setString(5, tenDN);
		   	stmt1.setString(6, matKhau);
		   	stmt1.setLong(7, maKH);
		   	int n= stmt1.executeUpdate(); 
			if (n == 0)
				  throw new SQLException("Sửa loại thất bại");

		  dc.cn.close();
	}
	
	public void XoaKhachHang(long maKH) throws Exception {
		DungChung dc= new DungChung();
		 dc.KetNoi();
		 
		  String sql1="DELETE FROM khachhang WHERE maKH = ?";
		   	PreparedStatement stmt1= dc.cn.prepareStatement(sql1);
		 	stmt1.setLong(1, maKH);
		   	int n= stmt1.executeUpdate(); 
			if (n == 0)
				  throw new SQLException("Xóa loại thất bại");

		  dc.cn.close();
	}
	
}
