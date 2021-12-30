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
 * Servlet implementation class DangKy
 */
@WebServlet("/DangKy")
public class DangKy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DangKy() {
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
			response.setContentType("text/html; charset=UTF-8");
			LoaiBO lBO = new LoaiBO();
			ArrayList<Loai> dsLoai = lBO.getLoai();
			session.setAttribute("dsLoai", dsLoai);
			
			
			String hoTen = request.getParameter("hoTen");
			String tenDangNhap = request.getParameter("tenDangNhap");
			String email = request.getParameter("email");
			String matKhau = request.getParameter("matKhau");
			String diaChi = request.getParameter("diaChi");
			String province = request.getParameter("province");
			String district = request.getParameter("district");
			String commune = request.getParameter("commune");
			String soDienThoai = request.getParameter("soDienThoai");
			KhachHangBO khBO = new KhachHangBO();
			ArrayList<KhachHang> ds;
			
			
			if (hoTen != null && tenDangNhap!=null && email!=null && matKhau!=null && diaChi!=null && province!=null && district!=null && commune!=null && soDienThoai!=null  ) {
				boolean ok=khBO.daTonTai(tenDangNhap,email);			
				if (ok) {
					request.setAttribute("errorDangKy", "Tên đăng nhập hoặc email đã tồn tại vui lòng chọn tên khác");
				} else
				if (matKhau.length() < 6) {request.setAttribute("errorDangKy", "Mật khẩu tối thiểu 6 kí tự");} else {
					if (matKhau!=null) matKhau = khBO.maHoa(matKhau);
					boolean temp = false;
					diaChi = diaChi +' '+ commune +' '+ district +' '+ province;
					temp = khBO.DangKy(hoTen,diaChi,Long.parseLong(soDienThoai), email, tenDangNhap, matKhau );
					if (temp) response.sendRedirect("DangNhap"); else request.setAttribute("errorDangKy", "Đăng ký thất bại");
				}
			}
			
			if (session.getAttribute("khachHang") != null) response.sendRedirect("TrangChu"); 
			RequestDispatcher rd = request.getRequestDispatcher("DangKy.jsp");
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
