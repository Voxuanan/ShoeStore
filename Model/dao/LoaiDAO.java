package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import bean.Loai;

public class LoaiDAO {
	public ArrayList<Loai> getLoai() throws Exception{
		 ArrayList<Loai> ds = new ArrayList<Loai>();
		 DungChung dc= new DungChung();
		 dc.KetNoi();
			Statement stmt = dc.cn.createStatement();
	            String SQL = "SELECT * FROM Loai";
	            ResultSet rs = stmt.executeQuery(SQL);

	            while (rs.next()) {
	            	long maLoai = rs.getLong(1);
					String tenLoai = rs.getString(2);
					ds.add(new Loai(maLoai,tenLoai));
	            }
	            rs.close();
	            dc.cn.close();
		 
		 return ds;
	}
	
	public void ThemLoai(String tenLoai) throws Exception {
		DungChung dc= new DungChung();
		 dc.KetNoi();
		 
		  
		  String sql1="INSERT INTO loai\r\n"
		  		+ "                  (tenloai)\r\n"
		  		+ "VALUES (?)";
		   	PreparedStatement stmt1= dc.cn.prepareStatement(sql1);
		 	stmt1.setString(1, tenLoai);
		   	int n= stmt1.executeUpdate(); 
			if (n == 0)
				  throw new SQLException("Thêm loại thất bại");

		  dc.cn.close();
	}
	
	public void SuaLoai(long maLoai, String tenLoai) throws Exception {
		DungChung dc= new DungChung();
		 dc.KetNoi();
		 
		  
		  String sql1="UPDATE loai SET tenloai = ? WHERE maloai = ?";
		   	PreparedStatement stmt1= dc.cn.prepareStatement(sql1);
		   	stmt1.setString(1, tenLoai);
		 	stmt1.setLong(2, maLoai);
		   	int n= stmt1.executeUpdate(); 
			if (n == 0)
				  throw new SQLException("Sửa loại thất bại");

		  dc.cn.close();
	}
	
	public void XoaLoai(long maLoai) throws Exception {
		DungChung dc= new DungChung();
		 dc.KetNoi();
		 
		  String sql1="DELETE FROM loai WHERE maloai = ?";
		   	PreparedStatement stmt1= dc.cn.prepareStatement(sql1);
		 	stmt1.setLong(1, maLoai);
		   	int n= stmt1.executeUpdate(); 
			if (n == 0)
				  throw new SQLException("Xóa loại thất bại");
		  dc.cn.close();
	}
}
