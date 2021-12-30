package bo;

import java.util.ArrayList;

import bean.Giay;
import dao.GiayDAO;

public class GiayBO {
	GiayDAO gDAO = new GiayDAO();
	ArrayList<Giay> ds;
	
	public ArrayList<Giay> getGiay() throws Exception{
		ds = gDAO.getGiay();
		return ds;
	}
	
	public ArrayList<Giay> getGiayTheoLoai(long maLoai) throws Exception{
		ds = gDAO.getGiayTheoLoai(maLoai);
		return ds;
	}
	
	public Giay getGiayTheoMa(long maGiay) throws Exception{
		return gDAO.getGiayTheoMa(maGiay);
	}
	
	public void themGiay(String tenGiay, long soLuongTon, long gia, long maLoai, String anh, String size, String mau, String moTa) throws Exception {
		gDAO.themGiay(tenGiay, soLuongTon, gia, maLoai, anh, size, mau, moTa);
	}
	
	public void suaGiay(long maGiay, String tenGiay, long soLuongTon, long gia, long maLoai, String anh, String size, String mau, String moTa) throws Exception {
		gDAO.suaGiay(maGiay, tenGiay, soLuongTon, gia, maLoai, anh, size, mau, moTa);
	}
	
	public void xoaGiay(long maGiay) throws Exception {
		gDAO.xoaGiay(maGiay);
	}
	
	public ArrayList<Giay> timGiay(String size, String mau, String search, long page ) throws Exception {
		ds = gDAO.timGiay(size,mau,search,page);
		return ds;
	}
	
	public ArrayList<Giay> timGiay1(long maLoai, String size, String mau, String search, long page ) throws Exception {
		ds = gDAO.timGiay1(maLoai,size,mau,search,page);
		return ds;
	}
	
	/*
	 * public ArrayList<Giay> Tim(String key){ ArrayList<Giay> result = new
	 * ArrayList<Giay>() ; for (Giay g: ds) { // forEach if
	 * (g.getTenGiay().toLowerCase().contains(key.toLowerCase()) ||
	 * g.getMau().toLowerCase().contains(key.toLowerCase()) ||
	 * g.getSize().toLowerCase().contains(key.toLowerCase()) ) { result.add(g); } }
	 * ds = result; return result; }
	 * 
	 * public ArrayList<Giay> TimSize(String key){ ArrayList<Giay> result = new
	 * ArrayList<Giay>() ; for (Giay g: ds) { if
	 * (g.getSize().toLowerCase().contains(key.toLowerCase()) ) { result.add(g); } }
	 * ds = result; return result; }
	 * 
	 * public ArrayList<Giay> TimMau(String key){ ArrayList<Giay> result = new
	 * ArrayList<Giay>() ; for (Giay g: ds) { if
	 * (g.getMau().toLowerCase().contains(key.toLowerCase()) ) { result.add(g); } }
	 * ds = result; return result; }
	 */
	
	public Long timSoLuongTon(long maGiay) {
		for (Giay g: ds) { 
			if (g.getMaGiay() == maGiay) {
				return g.getSoLuongTon();
			}
		}
		return (long)-1;
	}
	
	public String TimAnh(long maGiay){
		for (Giay g: ds) { 
			if (g.getMaGiay() == maGiay) {
				return g.getAnh();
			}
		}
		return null;
	}
	
	public String TimTen(long maGiay) {
		for (Giay g: ds) { 
			if (g.getMaGiay() == maGiay) {
				return g.getTenGiay();
			}
		}
		return null;
	}
	
}
