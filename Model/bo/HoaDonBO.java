package bo;

import java.util.ArrayList;

import bean.HoaDon;
import dao.HoaDonDAO;

public class HoaDonBO {
	HoaDonDAO hdDAO = new HoaDonDAO();
	ArrayList<HoaDon> ds;
	
	public boolean TaoHoaDon(long maKH) throws Exception {
		return hdDAO.TaoHoaDon(maKH);
	}
	
	public ArrayList<HoaDon> getHoaDon(long maKH) throws Exception {
		ds= hdDAO.getHoaDon(maKH);
		return ds;
	}
	
	public ArrayList<HoaDon> getTatCaHoaDon() throws Exception {
		ds= hdDAO.getTatCaHoaDon();
		return ds;
	}
	
	public void XoaHoaDon(long maHoaDon) throws Exception {
		hdDAO.XoaHoaDon(maHoaDon);
	}
	
	public void SuaHoaDon(long maHoaDon, boolean daMua) throws Exception {
		hdDAO.SuaHoaDon(maHoaDon,daMua);
	}
	
	public String TimNgayMua(long maHoaDon) {
		for (HoaDon hd: ds) { 
			if (hd.getMaHoaDon() == maHoaDon) {
				return hd.getNgayMua();
			}
		}
		return null;
	}
}
