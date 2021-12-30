package bean;

public class HoaDon {
	private long maHoaDon;
	private long maKH;
	private String ngayMua;
	private boolean daMua;
	public HoaDon() {
		super();
		// TODO Auto-generated constructor stub
	}
	public HoaDon(long maHoaDon, long maKH, String ngayMua, boolean daMua) {
		super();
		this.maHoaDon = maHoaDon;
		this.maKH = maKH;
		this.ngayMua = ngayMua;
		this.daMua = daMua;
	}
	public long getMaHoaDon() {
		return maHoaDon;
	}
	public void setMaHoaDon(long maHoaDon) {
		this.maHoaDon = maHoaDon;
	}
	public long getMaKH() {
		return maKH;
	}
	public void setMaKH(long maKH) {
		this.maKH = maKH;
	}
	public String getNgayMua() {
		return ngayMua;
	}
	public void setNgayMua(String ngayMua) {
		this.ngayMua = ngayMua;
	}
	public boolean isDaMua() {
		return daMua;
	}
	public void setDaMua(boolean daMua) {
		this.daMua = daMua;
	}
}
