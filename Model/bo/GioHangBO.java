package bo;

import java.util.ArrayList;

import bean.Giay;
import bean.GioHang;

public class GioHangBO {
	public ArrayList<GioHang> ds = new ArrayList<GioHang>();
	public ArrayList<GioHang> getGioHang(){
		return ds;
	}
	
	public void Them(long maGiay, String tenGiay, long soLuong, long gia, String anh, String size, String mau) throws Exception{
		boolean ok = true;
		GiayBO gBO = new GiayBO();
		ArrayList<Giay> dsGiay = gBO.getGiay();
		
		for (GioHang gh : ds) {
			if (gh.getMaGiay() == maGiay) {
				ok=false;
				if (gBO.timSoLuongTon(maGiay) >= gh.getSoLuong()+soLuong) {
					gh.setSoLuong(gh.getSoLuong() + soLuong);
					break;
				}
			}
		}	
		if (ok) {
			if (gBO.timSoLuongTon(maGiay) >= 1) {
				ds.add(new GioHang(maGiay,tenGiay,soLuong,gia,anh,size,mau));
			}
		}
	}
	
	public void Xoa(long maGiay) {
		for (GioHang gh : ds) {
			if (gh.getMaGiay() == (maGiay)) {
				ds.remove(gh); 
				break;
			}
		}
	}

	public void XoaTatCa() {
		ds = new ArrayList<GioHang>();
	}
	
	public void SuaSoLuong(long maGiay, Long soluong)  throws Exception {
		GiayBO gBO = new GiayBO();
		ArrayList<Giay> dsGiay = gBO.getGiay();
		
		for (GioHang gh : ds) {
			if (gh.getMaGiay() == maGiay) {
				if (gBO.timSoLuongTon(maGiay) > soluong) {
					gh.setSoLuong(soluong);
				}
			}
		}
	}

}
