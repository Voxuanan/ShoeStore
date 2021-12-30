package bean;

public class GioHang {
	private long maGiay;
	private String tenGiay;
	private long soLuong;
	private long gia;
	private String anh;
	private String size;
	private String mau;
	public GioHang() {
		super();
		// TODO Auto-generated constructor stub
	}
	public GioHang(long maGiay, String tenGiay, long soLuong, long gia, String anh, String size, String mau) {
		super();
		this.maGiay = maGiay;
		this.tenGiay = tenGiay;
		this.soLuong = soLuong;
		this.gia = gia;
		this.anh = anh;
		this.size = size;
		this.mau = mau;
	}
	public long getMaGiay() {
		return maGiay;
	}
	public void setMaGiay(long maGiay) {
		this.maGiay = maGiay;
	}
	public String getTenGiay() {
		return tenGiay;
	}
	public void setTenGiay(String tenGiay) {
		this.tenGiay = tenGiay;
	}
	public long getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(long soLuong) {
		this.soLuong = soLuong;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getMau() {
		return mau;
	}
	public void setMau(String mau) {
		this.mau = mau;
	}
}
