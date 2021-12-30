package Mysevlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.KhachHang;
import bean.Loai;
import bo.KhachHangBO;
import bo.LoaiBO;

/**
 * Servlet implementation class QuanLyKhachHang
 */
@WebServlet("/QuanLyKhachHang")
public class QuanLyKhachHang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuanLyKhachHang() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session=request.getSession();
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			LoaiBO lBO = new LoaiBO();
			ArrayList<Loai> dsLoai = lBO.getLoai();	
			session.setAttribute("dsLoai", dsLoai);
			
			String maKhachHang = request.getParameter("maKhachHang");
			String HoTenKhachHang = request.getParameter("HoTenKhachHang");
			String TenDangNhap = request.getParameter("TenDangNhap");
			String Matkhau = request.getParameter("Matkhau");

			String Email = request.getParameter("Email");
			String Diachi = request.getParameter("Diachi");
			String Dienthoai = request.getParameter("Dienthoai");
			KhachHangBO khBO = new KhachHangBO();
			if (Matkhau!=null) Matkhau = khBO.maHoa(Matkhau);
			ArrayList<KhachHang> dsKhachHang = khBO.getTatCaKhachHang();
			
			String suaKhachHang = request.getParameter("suaKhachHang");
			String maXoa= request.getParameter("maXoa");
			if (suaKhachHang !=null) {
				khBO.SuaKhachHang(Long.parseLong(maKhachHang), HoTenKhachHang, TenDangNhap, Matkhau, Diachi, Long.parseLong(Dienthoai), Email);
				dsKhachHang = khBO.getTatCaKhachHang();
			}
			if (maXoa!=null) {
				khBO.XoaKhachHang(Long.parseLong(maXoa));
				dsKhachHang = khBO.getTatCaKhachHang();
				response.sendRedirect("QuanLyKhachHang");
			}
			
			if (session.getAttribute("admin") == null) response.sendRedirect("DangNhapAdmin");	
			request.setAttribute("dsKhachHang", dsKhachHang);
			RequestDispatcher rd = request.getRequestDispatcher("ADMIN/QuanLyKhachHang.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
