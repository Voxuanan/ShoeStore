package bo;

import java.util.ArrayList;

import bean.Admin;
import dao.AdminDAO;

public class AdminBO {
	AdminDAO adminDAO = new AdminDAO();
	ArrayList<Admin> ds;
	
	public ArrayList<Admin> getAdmin(String tenDangNhap, String matKhau) throws Exception {
		ds= adminDAO.getAdmin(tenDangNhap,matKhau);
		return ds;
	}
	
	public Admin Tim(String tenDangNhap, String matKhau){
		Admin tam = new Admin();
		for (Admin admin: ds) { 
			if (admin.getMatKhau().equals(matKhau) && admin.getTenDangNhap().equals(tenDangNhap)) {
				tam = admin;
				return tam;
			}
		}
		return null;
	}
}
