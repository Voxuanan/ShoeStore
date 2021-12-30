package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.Admin;

public class AdminDAO {
	public ArrayList<Admin> getAdmin(String un, String pass) throws Exception {
		 ArrayList<Admin> ds = new ArrayList<Admin>();
		 DungChung dc= new DungChung();
		 dc.KetNoi();
	        
	            String sql="SELECT * FROM DangNhap WHERE TenDangNhap = ? AND MatKhau = ?";
	 		   	PreparedStatement stmt= dc.cn.prepareStatement(sql);
	 		   	stmt.setString(1, un);
				stmt.setString(2,pass);	
	 		   	ResultSet rs= stmt.executeQuery(); 

	            while (rs.next()) {
	            	String tenDangNhap = rs.getString(1);
					String matKhau = rs.getString(2);
					ds.add(new Admin(tenDangNhap,matKhau));
	            }
	            rs.close();
	            dc.cn.close();	 
		 return ds;
	}
}
