package bean;

public class KhachHang {
	private long maKH;
	private String hoTen;
	private String diaChi;
	private long soDienThoai;
	private String email;
	private String tenDangNhap;
	private String matKhau;
	public KhachHang() {
		super();
		// TODO Auto-generated constructor stub
	}
	public KhachHang(long maKH, String hoTen, String diaChi, long soDienThoai, String email, String tenDangNhap,
			String matKhau) {
		super();
		this.maKH = maKH;
		this.hoTen = hoTen;
		this.diaChi = diaChi;
		this.soDienThoai = soDienThoai;
		this.email = email;
		this.tenDangNhap = tenDangNhap;
		this.matKhau = matKhau;
	}
	public long getMaKH() {
		return maKH;
	}
	public void setMaKH(long maKH) {
		this.maKH = maKH;
	}
	public String getHoTen() {
		return hoTen;
	}
	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public long getSoDienThoai() {
		return soDienThoai;
	}
	public void setSoDienThoai(long soDienThoai) {
		this.soDienThoai = soDienThoai;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTenDangNhap() {
		return tenDangNhap;
	}
	public void setTenDangNhap(String tenDangNhap) {
		this.tenDangNhap = tenDangNhap;
	}
	public String getMatKhau() {
		return matKhau;
	}
	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}
		
}
