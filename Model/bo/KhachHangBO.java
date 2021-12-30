package bo;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;

import bean.KhachHang;
import dao.KhachHangDAO;

public class KhachHangBO {
	KhachHangDAO khDAO = new KhachHangDAO();
	ArrayList<KhachHang> ds;
	
	public ArrayList<KhachHang> getKhachHang(String tenDangNhap, String matKhau) throws Exception {
		ds= khDAO.getKhachHang(tenDangNhap,matKhau);
		return ds;
	}
	
	public ArrayList<KhachHang> getTatCaKhachHang() throws Exception {
		ds= khDAO.getTatCaKhachHang();
		return ds;
	}
	
	public KhachHang Tim(String tenDangNhap, String matKhau){
		KhachHang tam = new KhachHang();
		for (KhachHang kh: ds) {
			if (kh.getMatKhau().equals(matKhau) && kh.getTenDangNhap().equals(tenDangNhap)) {
				tam = kh;
				return tam;
			}
		}
		return null;
	}
	
	public boolean daTonTai(String tenDangNhap,String matKhau) throws Exception {
		return khDAO.daTonTai(tenDangNhap,matKhau);
	}
	
	public boolean DangKy(String hoTen, String diaChi, Long soDienThoai,String email, String tenDangNhap, String matKhau ) throws Exception {
		return khDAO.DangKy(hoTen,diaChi,soDienThoai,email,tenDangNhap,matKhau);
	}
	
	public void XoaKhachHang(long maKH) throws Exception{
		khDAO.XoaKhachHang(maKH);
	}
	
	public void SuaKhachHang(long maKH, String tenKH, String tenDN, String matKhau, String diaChi, long sdt, String Email) throws Exception{
		khDAO.SuaKhachHang(maKH, tenKH,tenDN,matKhau,diaChi,sdt,Email);
	}
	
	public String maHoa(String matKhau) {
		try {
			  MessageDigest md = MessageDigest.getInstance("MD5");
		        md.update(matKhau.getBytes());
		        byte[] digest = md.digest();
		        BigInteger bigInt = new BigInteger(1,digest);
		        String hashtext = bigInt.toString(16);
		        while(hashtext.length() < 32 ){
		          hashtext = "0"+hashtext;
		        }
				return hashtext;
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			return "123456";
		}
	}
}
