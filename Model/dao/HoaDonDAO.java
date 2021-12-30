package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.ChiTietHoaDon;
import bean.HoaDon;
import bo.ChiTietHoaDonBO;

public class HoaDonDAO {
	public boolean TaoHoaDon(long makh) throws Exception {
		 DungChung dc= new DungChung();
		 dc.KetNoi();
		  String sql="INSERT INTO hoadon\r\n"
		  		+ "                  (makh, damua, NgayMua)\r\n"
		  		+ "VALUES (?,?,?)";
		  PreparedStatement stmt= dc.cn.prepareStatement(sql);
		  stmt.setLong(1, makh);
		  stmt.setBoolean(2, false);
		  stmt.setDate(3, java.sql.Date.valueOf(java.time.LocalDate.now()));
		  
		  boolean ok=true;
		  int n= stmt.executeUpdate(); 
		  if (n == 0)
			ok= false;
         
		  dc.cn.close();
		return ok;
	}
	
	public ArrayList<HoaDon> getHoaDon(long mkh) throws Exception {
		 ArrayList<HoaDon> ds = new ArrayList<HoaDon>();
		 DungChung dc= new DungChung();
		 dc.KetNoi();
	        
	            String sql="SELECT * FROM hoadon WHERE makh = ? ORDER BY MaHoaDon DESC";
	 		   	PreparedStatement stmt= dc.cn.prepareStatement(sql);
	 		   	stmt.setLong(1, mkh);
	 		   	ResultSet rs= stmt.executeQuery(); 

	            while (rs.next()) {
					long maHoaDon = rs.getLong(1);
					long maKhachHang = rs.getLong(2);
					String ngayMua = rs.getString(3);
					boolean daMua = rs.getBoolean(4);
					ds.add(new HoaDon(maHoaDon,maKhachHang,ngayMua,daMua));
	            }
	            rs.close();
	            dc.cn.close();
		 return ds;
	}
	
	public ArrayList<HoaDon> getTatCaHoaDon() throws Exception {
		 ArrayList<HoaDon> ds = new ArrayList<HoaDon>();
		 DungChung dc= new DungChung();
		 dc.KetNoi();
	        
	            String sql="SELECT * FROM hoadon ";
	 		   	PreparedStatement stmt= dc.cn.prepareStatement(sql);
	 		   	ResultSet rs= stmt.executeQuery(); 

	            while (rs.next()) {
	            	long maHoaDon = rs.getLong(1);
					long maKhachHang = rs.getLong(2);
					String ngayMua = rs.getString(3);
					boolean daMua = rs.getBoolean(4);
					ds.add(new HoaDon(maHoaDon,maKhachHang,ngayMua,daMua));
	            }
	            rs.close();
	            dc.cn.close();
		 return ds;
	}
	
	public void XoaHoaDon(long maHoaDon) throws Exception {
		DungChung dc= new DungChung();
		 dc.KetNoi();
		 
			 ChiTietHoaDonBO cthdBO = new ChiTietHoaDonBO();
			 ArrayList<ChiTietHoaDon> dsChiTietHoaDon = cthdBO.getChiTietHoaDon1(maHoaDon); 
			 for (ChiTietHoaDon ct: dsChiTietHoaDon) {
				 cthdBO.XoaChiTietHoaDon(ct.getMaChiTietHoaDon());
			 }

		 
		    String sql1="DELETE FROM hoadon WHERE MaHoaDon = ?";
		   	PreparedStatement stmt1= dc.cn.prepareStatement(sql1);
		 	stmt1.setLong(1, maHoaDon);
		   	int n= stmt1.executeUpdate(); 
			if (n == 0)
				  throw new SQLException("Xóa hóa đơn thất bại");
		  dc.cn.close();
	}
	
	public void SuaHoaDon(long maHoaDon, boolean daMua) throws Exception {
		DungChung dc= new DungChung();
		 dc.KetNoi();
			 if (daMua == true) { 
				 ChiTietHoaDonBO cthdBO = new ChiTietHoaDonBO();
				 ArrayList<ChiTietHoaDon> dsChiTietHoaDon = cthdBO.getChiTietHoaDon1(maHoaDon); 
				 for (ChiTietHoaDon ct: dsChiTietHoaDon) {
					 cthdBO.SuaChiTietHoaDon(ct.getMaGiay(), ct.getSoLuongMua(), daMua, ct.getMaChiTietHoaDon());
				 }
			 }
			 
		    String sql1="UPDATE hoadon\r\n"
		    		+ "SET          damua =? WHERE MaHoaDon = ?";
		   	PreparedStatement stmt1= dc.cn.prepareStatement(sql1);
		   	stmt1.setBoolean(1, daMua);
		 	stmt1.setLong(2, maHoaDon);
		   	int n= stmt1.executeUpdate(); 
			if (n == 0)
				  throw new SQLException("Sửa hóa đơn thất bại");
		  dc.cn.close();
	}
}
