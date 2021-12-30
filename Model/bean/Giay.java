package bean;

public class Giay {
	private long maGiay;
	private String tenGiay;
	private long soLuongTon;
	private long gia;
	private long maLoai;
	private String anh;
	private String size;
	private String mau;
	private String moTa;
	public Giay() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Giay(long maGiay, String tenGiay, long soLuongTon, long gia, long maLoai, String anh, String size,
			String mau, String moTa) {
		super();
		this.maGiay = maGiay;
		this.tenGiay = tenGiay;
		this.soLuongTon = soLuongTon;
		this.gia = gia;
		this.maLoai = maLoai;
		this.anh = anh;
		this.size = size;
		this.mau = mau;
		this.moTa = moTa;
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
	public long getSoLuongTon() {
		return soLuongTon;
	}
	public void setSoLuongTon(long soLuongTon) {
		this.soLuongTon = soLuongTon;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public long getMaLoai() {
		return maLoai;
	}
	public void setMaLoai(long maLoai) {
		this.maLoai = maLoai;
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
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
}
