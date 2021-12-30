package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import bean.Giay;


public class GiayDAO {
	public ArrayList<Giay> getGiay() throws Exception{
		 ArrayList<Giay> ds = new ArrayList<Giay>();
		 DungChung dc= new DungChung();
		 dc.KetNoi();
		 
				Statement stmt = dc.cn.createStatement();
	            String SQL = "SELECT * from Giay";
	            ResultSet rs = stmt.executeQuery(SQL);

	            while (rs.next()) {
	            	long maGiay = rs.getLong("maGiay");
					String tenGiay = rs.getString("tenGiay");
					long soLuongTon = rs.getLong("soLuongTon");
					long gia = rs.getLong("gia");
					long maLoai = rs.getLong("maLoai");
					String anh = rs.getString("anh");
					String size = rs.getString("size");
					String mau = rs.getString("mau");
					String moTa = rs.getString("moTa");
					ds.add(new Giay(maGiay,tenGiay,soLuongTon,gia,maLoai,anh,size,mau,moTa));
	            }
	            rs.close();
	            dc.cn.close();
		 return ds;
	}
	
	public ArrayList<Giay> getGiayTheoLoai(long maLoai1) throws Exception{
		 ArrayList<Giay> ds = new ArrayList<Giay>();
		 DungChung dc= new DungChung();
		 dc.KetNoi();
		 
			 	String sql="SELECT * FROM Giay WHERE maLoai = ?";
			   	PreparedStatement stmt= dc.cn.prepareStatement(sql);
			   	stmt.setLong(1,maLoai1);	
			   	ResultSet rs= stmt.executeQuery();
			   	
	            while (rs.next()) {
	            	long maGiay = rs.getLong("maGiay");
					String tenGiay = rs.getString("tenGiay");
					long soLuongTon = rs.getLong("soLuongTon");
					long gia = rs.getLong("gia");
					long maLoai = rs.getLong("maLoai");
					String anh = rs.getString("anh");
					String size = rs.getString("size");
					String mau = rs.getString("mau");
					String moTa = rs.getString("moTa");
					ds.add(new Giay(maGiay,tenGiay,soLuongTon,gia,maLoai,anh,size,mau,moTa));
	            }
	            rs.close();
	            dc.cn.close();
		 return ds;
	}
	
	public Giay getGiayTheoMa(long maGiay1) throws Exception{
		 Giay result = null;
		 DungChung dc= new DungChung();
		 dc.KetNoi();
		 
			 	String sql="SELECT * FROM Giay WHERE maGiay = ?";
			   	PreparedStatement stmt= dc.cn.prepareStatement(sql);
			   	stmt.setLong(1,maGiay1);	
			   	ResultSet rs= stmt.executeQuery();

	            while (rs.next()) {
	            	long maGiay = rs.getLong("maGiay");
					String tenGiay = rs.getString("tenGiay");
					long soLuongTon = rs.getLong("soLuongTon");
					long gia = rs.getLong("gia");
					long maLoai = rs.getLong("maLoai");
					String anh = rs.getString("anh");
					String size = rs.getString("gia");
					String mau = rs.getString("mau");
					String moTa = rs.getString("moTa");
					result = new Giay(maGiay,tenGiay,soLuongTon,gia,maLoai,anh,size,mau,moTa);
	            }
	            rs.close();
	            dc.cn.close();
		 return result;
	}
	
	public ArrayList<Giay> timGiay(String size, String mau, String search, long page) throws Exception {
		ArrayList<Giay> ds = new ArrayList<Giay>();
		DungChung dc= new DungChung();
		 dc.KetNoi();
		 
		  
		  String sql="SELECT *\r\n"
		  		+ "FROM (\r\n"
		  		+ "    SELECT *, ROW_NUMBER() OVER (ORDER BY maGiay) AS RowNum\r\n"
		  		+ "    FROM dbo.Giay\r\n"
		  		+ "	WHERE  size LIKE ? AND mau LIKE ? AND tenGiay LIKE ? \r\n"
		  		+ ") AS MyDerivedTable\r\n"
		  		+ "WHERE MyDerivedTable.RowNum BETWEEN 1+(?-1)*16 AND (?*16)\r\n"
		  		+ "";
		    PreparedStatement stmt= dc.cn.prepareStatement(sql);
		   	stmt.setString(1,"%"+size+"%");	
		  	stmt.setString(2,"%"+mau+"%");	
		  	stmt.setString(3,"%"+search+"%");	
		  	stmt.setLong(4,page);	
		  	stmt.setLong(5,page);	
		   	ResultSet rs= stmt.executeQuery();
		 	   	
		   	while (rs.next()) {
            	long maGiay = rs.getLong("maGiay");
				String tenGiay = rs.getString("tenGiay");
				long soLuongTon = rs.getLong("soLuongTon");
				long gia = rs.getLong("gia");
				long maLoai1 = rs.getLong("maLoai");
				String anh = rs.getString("anh");
				String size1 = rs.getString("size");
				String mau1 = rs.getString("mau");
				String moTa = rs.getString("moTa");
				ds.add(new Giay(maGiay,tenGiay,soLuongTon,gia,maLoai1,anh,size1,mau1,moTa));
            }
            rs.close();
            dc.cn.close();
	 return ds;
	}
	
	public ArrayList<Giay> timGiay1(long maLoai, String size, String mau, String search, long page) throws Exception {
		ArrayList<Giay> ds = new ArrayList<Giay>();
		DungChung dc= new DungChung();
		 dc.KetNoi();
		 
		  
		  String sql="SELECT *\r\n"
		  		+ "FROM (\r\n"
		  		+ "    SELECT *, ROW_NUMBER() OVER (ORDER BY maGiay) AS RowNum\r\n"
		  		+ "    FROM dbo.Giay\r\n"
		  		+ "	WHERE  maLoai = ? AND size LIKE ? AND mau LIKE ? AND tenGiay LIKE ? \r\n"
		  		+ ") AS MyDerivedTable\r\n"
		  		+ "WHERE MyDerivedTable.RowNum BETWEEN 1+(?-1)*16 AND (?*16)\r\n"
		  		+ "";
		    PreparedStatement stmt= dc.cn.prepareStatement(sql);
		   	stmt.setLong(1,maLoai);	
		   	stmt.setString(2,"%"+size+"%");	
		  	stmt.setString(3,"%"+mau+"%");	
		  	stmt.setString(4,"%"+search+"%");	
		  	stmt.setLong(5,page);	
		  	stmt.setLong(6,page);	
		   	ResultSet rs= stmt.executeQuery();
		 	   	
		   	while (rs.next()) {
            	long maGiay = rs.getLong("maGiay");
				String tenGiay = rs.getString("tenGiay");
				long soLuongTon = rs.getLong("soLuongTon");
				long gia = rs.getLong("gia");
				long maLoai1 = rs.getLong("maLoai");
				String anh = rs.getString("anh");
				String size1 = rs.getString("size");
				String mau1 = rs.getString("mau");
				String moTa = rs.getString("moTa");
				ds.add(new Giay(maGiay,tenGiay,soLuongTon,gia,maLoai1,anh,size1,mau1,moTa));
            }
            rs.close();
            dc.cn.close();
	 return ds;
	}
	
	public void themGiay(String tenGiay, long soLuongTon, long gia, long maLoai, String anh, String size, String mau, String moTa) throws Exception {
		DungChung dc= new DungChung();
		 dc.KetNoi();
		 
		  
		  String sql="INSERT INTO Giay\r\n"
		  		+ "                  (tenGiay, soLuongTon, gia, maLoai, anh, size, mau, moTa)\r\n"
		  		+ "VALUES (?,?,?,?,?,?,?,?)";
		   	PreparedStatement stmt= dc.cn.prepareStatement(sql);
		 	stmt.setString(1, tenGiay);
		 	stmt.setLong(2, soLuongTon);
		 	stmt.setLong(3, gia);
		 	stmt.setLong(4, maLoai);
		 	stmt.setString(5, anh);
		 	stmt.setString(6, size);
			stmt.setString(7, mau);
		 	stmt.setString(8, moTa);
		   	int n= stmt.executeUpdate(); 
			if (n == 0)
				  throw new SQLException("Thêm giày thất bại");

		  dc.cn.close();
	}
	

	public void suaGiay(long maGiay, String tenGiay, long soLuongTon, long gia, long maLoai, String anh, String size, String mau, String moTa) throws Exception {
		DungChung dc= new DungChung();
		 dc.KetNoi();
		 
		  
		  String sql="UPDATE Giay\r\n"
		  		+ "SET          tenGiay = ?, soLuongTon = ?, gia = ?, maLoai = ?, anh = ?, size = ?, mau = ?, moTa =? WHERE maGiay = ?";
		   	PreparedStatement stmt= dc.cn.prepareStatement(sql);
			stmt.setString(1, tenGiay);
			stmt.setLong(2, soLuongTon);
			stmt.setLong(3, gia);
			stmt.setLong(4, maLoai);
			stmt.setString(5, anh);
			stmt.setString(6, size);
			stmt.setString(7, mau);
			stmt.setString(8, moTa);
			stmt.setLong(9, maGiay);
		   	int n= stmt.executeUpdate(); 
			if (n == 0)
				  throw new SQLException("Sửa giày thất bại");
		  dc.cn.close();
	}
	
	public void xoaGiay(long maGiay) throws Exception {
		DungChung dc= new DungChung();
		 dc.KetNoi();
		  
		  String sql="DELETE FROM Giay WHERE maGiay = ?";
		   	PreparedStatement stmt= dc.cn.prepareStatement(sql);
		   	stmt.setLong(1, maGiay);
		   	int n= stmt.executeUpdate(); 
			if (n == 0)
				  throw new SQLException("Xóa sách thất bại");

		  dc.cn.close();
	}
}
