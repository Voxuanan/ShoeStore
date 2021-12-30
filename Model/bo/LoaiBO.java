package bo;

import java.util.ArrayList;

import bean.Loai;
import dao.LoaiDAO;


public class LoaiBO {
	LoaiDAO lDAO = new LoaiDAO();
	ArrayList<Loai> ds;
	
	public ArrayList<Loai> getLoai() throws Exception{
		ds= lDAO.getLoai();
		return ds;
	}
	
	public void ThemLoai(String TenLoai) throws Exception{
		lDAO.ThemLoai(TenLoai);
	}
	
	public void SuaLoai(long maLoai, String TenLoai) throws Exception{
		lDAO.SuaLoai(maLoai, TenLoai);
	}
	
	public void XoaLoai(long maLoai) throws Exception{
		lDAO.XoaLoai(maLoai);
	}
}
