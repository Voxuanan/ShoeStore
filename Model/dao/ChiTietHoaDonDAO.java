package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.ChiTietHoaDon;

public class ChiTietHoaDonDAO {
	public void TaoChiTietHoaDon(long maHoaDon,long maGiay, long soLuong, boolean daMua) throws Exception {
		 DungChung dc= new DungChung();
		 dc.KetNoi();
		 
		  
			 if (daMua == true) {
				 String sql1="UPDATE Giay SET soLuongTon = soLuongTon - ? WHERE maGiay = ?";
					   	PreparedStatement stmt1= dc.cn.prepareStatement(sql1);
					   	stmt1.setLong(1, soLuong);
					   	stmt1.setLong(2, maGiay);
					   	int n= stmt1.executeUpdate(); 
						if (n == 0)
							  throw new SQLException("Không update thành công");
			 }
		   	
			
			 String sql="INSERT INTO ChiTietHoaDon\r\n"
				  		+ "                  (maGiay, SoLuongMua, MaHoaDon,DaMua)\r\n"
				  		+ "VALUES (?,?,?,?)";
				  PreparedStatement stmt= dc.cn.prepareStatement(sql);
				  stmt.setLong(1, maGiay);
				  stmt.setLong(2, soLuong);
				  stmt.setLong(3, maHoaDon);
				  stmt.setBoolean(4, daMua);
				  int n= stmt.executeUpdate(); 
				  if (n == 0)
					  throw new SQLException("Không insert thành công");

		  dc.cn.close();
	}
	
	public ArrayList<ChiTietHoaDon> getChiTietHoaDon(long maKH) throws Exception{
		 ArrayList<ChiTietHoaDon> ds = new ArrayList<ChiTietHoaDon>();
		 DungChung dc= new DungChung();
		 dc.KetNoi();
	        
	            String sql="SELECT * \r\n"
	            		+ "FROM ChiTietHoaDon AS t \r\n"
	            		+ "JOIN hoadon AS t1 ON t.MaHoaDon = t1.MaHoaDon\r\n"
	            		+ "WHERE maKH = ?\r\n"
	            		+ "ORDER BY MaChiTietHD DESC";
	 		   	PreparedStatement stmt= dc.cn.prepareStatement(sql);
	 		   	stmt.setLong(1, maKH);
	 		   	ResultSet rs= stmt.executeQuery(); 

	            while (rs.next()) {
					long maChiTietHD = rs.getLong(1);
					long maGiay = rs.getLong(2);
					long soLuongMua = rs.getLong(3);
					long maHoaDon = rs.getLong(4);
					boolean daMua = rs.getBoolean(5);
					ds.add(new ChiTietHoaDon(maChiTietHD,maGiay,soLuongMua,maHoaDon,daMua));
	            }
	            rs.close();
	            dc.cn.close();
		 return ds;
	}
	
	public ArrayList<ChiTietHoaDon> getChiTietHoaDon1(long maHoaDon1) throws Exception{
		 ArrayList<ChiTietHoaDon> ds = new ArrayList<ChiTietHoaDon>();
		 DungChung dc= new DungChung();
		 dc.KetNoi();
	        
	            String sql="SELECT * FROM ChiTietHoaDon WHERE MaHoaDon = ?";
	 		   	PreparedStatement stmt= dc.cn.prepareStatement(sql);
	 		   	stmt.setLong(1, maHoaDon1);
	 		   	ResultSet rs= stmt.executeQuery(); 

	            while (rs.next()) {
	            	long maChiTietHD = rs.getLong(1);
					long maGiay = rs.getLong(2);
					long soLuongMua = rs.getLong(3);
					long maHoaDon = rs.getLong(4);
					boolean daMua = rs.getBoolean(5);
					ds.add(new ChiTietHoaDon(maChiTietHD,maGiay,soLuongMua,maHoaDon,daMua));
	            }
	            rs.close();
	            dc.cn.close();
		 return ds;
	}
	
	public void XoaChiTietHoaDon(long maChiTietHoaDon) throws Exception {
		DungChung dc= new DungChung();
		 dc.KetNoi();
		 String sql="DELETE FROM ChiTietHoaDon WHERE MaChiTietHD = ?";
		   	PreparedStatement stmt= dc.cn.prepareStatement(sql);
		 	stmt.setLong(1, maChiTietHoaDon);
		   	int n= stmt.executeUpdate(); 
			if (n == 0)
				  throw new SQLException("Xóa chi tiết hóa đơn thất bại");
			
		  dc.cn.close();
	}
	
	public void SuaChiTietHoaDon(long maGiay, long soLuongMua, boolean daMua, long MaChiTietHD ) throws Exception {
		DungChung dc= new DungChung();
		 dc.KetNoi();
		 boolean oldDaMua = false;
		 
		 String sql2="SELECT * FROM ChiTietHoaDon WHERE maChiTietHD = ?";
		   	PreparedStatement stmt2= dc.cn.prepareStatement(sql2);
		   	stmt2.setLong(1, MaChiTietHD);
		   	ResultSet rs= stmt2.executeQuery(); 

	         while (rs.next()) {
	         	long maChiTietHD = rs.getLong(1);
					oldDaMua = rs.getBoolean(5);
	         }
         rs.close();
		 
		 
		 if (daMua == true && daMua != oldDaMua) {
			 String sql1="UPDATE Giay SET soLuongTon = soLuongTon - ? WHERE maGiay = ?";
				   	PreparedStatement stmt1= dc.cn.prepareStatement(sql1);
				   	stmt1.setLong(1, soLuongMua);
				   	stmt1.setLong(2, maGiay);
				   	int n= stmt1.executeUpdate(); 
					if (n == 0)
						  throw new SQLException("Không update thành công");
		 }
		 
		 
		 String sql="UPDATE ChiTietHoaDon\r\n"
		 		+ "SET          MaGiay = ? , SoLuongMua = ? , DaMua = ? WHERE MaChiTietHD = ?";
		   	PreparedStatement stmt= dc.cn.prepareStatement(sql);
		 	stmt.setLong(1, maGiay);
		 	stmt.setLong(2, soLuongMua);
		 	stmt.setBoolean(3, daMua);
		 	stmt.setLong(4, MaChiTietHD);
		   	int n= stmt.executeUpdate(); 
			if (n == 0)
				  throw new SQLException("Sửa chi tiết hóa đơn thất bại");
		  dc.cn.close();
	}
}
