package bo;

import java.util.ArrayList;

import bean.ChiTietHoaDon;
import dao.ChiTietHoaDonDAO;

public class ChiTietHoaDonBO {
	ChiTietHoaDonDAO cthdDAO = new ChiTietHoaDonDAO();
	ArrayList<ChiTietHoaDon> ds;
	public void TaoChiTietHoaDon(long maHoaDon,long maGiay, long soLuong, boolean daMua) throws Exception {
		cthdDAO.TaoChiTietHoaDon(maHoaDon, maGiay, soLuong,daMua);
	}
	
	public ArrayList<ChiTietHoaDon> getChiTietHoaDon(long maKH) throws Exception{
		ds=cthdDAO.getChiTietHoaDon(maKH);
		return ds;
	}
	
	public ArrayList<ChiTietHoaDon> getChiTietHoaDon1(long maHoaDon) throws Exception{
		ds=cthdDAO.getChiTietHoaDon1(maHoaDon);
		return ds;
	}
	
	public void XoaChiTietHoaDon(long maChiTietHoaDon) throws Exception{
		cthdDAO.XoaChiTietHoaDon(maChiTietHoaDon);
	}
	
	public void SuaChiTietHoaDon(long maGiay, long soLuongMua, boolean daMua, long MaChiTietHD) throws Exception{
		cthdDAO.SuaChiTietHoaDon(maGiay,soLuongMua,daMua,MaChiTietHD);
	}
}
