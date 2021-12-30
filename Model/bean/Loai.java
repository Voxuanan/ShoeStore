package bean;

public class Loai {
	private long maLoai;
	private String tenLoai;
	public Loai() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Loai(long maLoai, String tenLoai) {
		super();
		this.maLoai = maLoai;
		this.tenLoai = tenLoai;
	}
	public long getMaLoai() {
		return maLoai;
	}
	public void setMaLoai(long maLoai) {
		this.maLoai = maLoai;
	}
	public String getTenLoai() {
		return tenLoai;
	}
	public void setTenLoai(String tenLoai) {
		this.tenLoai = tenLoai;
	}
	
}
