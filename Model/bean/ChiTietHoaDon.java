package bean;

public class ChiTietHoaDon {
	private long maChiTietHoaDon;
	private long maGiay;
	private long soLuongMua;
	private long maHoaDon;
	private boolean daMua;
	public ChiTietHoaDon() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ChiTietHoaDon(long maChiTietHoaDon, long maGiay, long soLuongMua, long maHoaDon, boolean daMua) {
		super();
		this.maChiTietHoaDon = maChiTietHoaDon;
		this.maGiay = maGiay;
		this.soLuongMua = soLuongMua;
		this.maHoaDon = maHoaDon;
		this.daMua = daMua;
	}
	public long getMaChiTietHoaDon() {
		return maChiTietHoaDon;
	}
	public void setMaChiTietHoaDon(long maChiTietHoaDon) {
		this.maChiTietHoaDon = maChiTietHoaDon;
	}
	public long getMaGiay() {
		return maGiay;
	}
	public void setMaGiay(long maGiay) {
		this.maGiay = maGiay;
	}
	public long getSoLuongMua() {
		return soLuongMua;
	}
	public void setSoLuongMua(long soLuongMua) {
		this.soLuongMua = soLuongMua;
	}
	public long getMaHoaDon() {
		return maHoaDon;
	}
	public void setMaHoaDon(long maHoaDon) {
		this.maHoaDon = maHoaDon;
	}
	public boolean isDaMua() {
		return daMua;
	}
	public void setDaMua(boolean daMua) {
		this.daMua = daMua;
	}
	
}
