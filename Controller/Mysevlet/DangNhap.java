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
 * Servlet implementation class DangNhap
 */
@WebServlet("/DangNhap")
public class DangNhap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DangNhap() {
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
			
			String tenDangNhap = request.getParameter("tenDangNhap");
			String matKhau = request.getParameter("matKhau");
			String dangXuat = request.getParameter("dangXuat");
			KhachHangBO khBO = new KhachHangBO();
			if (matKhau!=null) matKhau = khBO.maHoa(matKhau);
			ArrayList<KhachHang> ds;

			if (tenDangNhap != null && matKhau!=null) {
				ds=khBO.getKhachHang(tenDangNhap,matKhau);
				KhachHang khachHang = khBO.Tim(tenDangNhap, matKhau);
				if (khachHang!=null) {
					session.setAttribute("khachHang", khachHang);
				} else request.setAttribute("errorDangNhap", "Tên tài khoản hoặc mật khẩu không đúng");
			} 
			if (dangXuat != null) {
				ds=null;
				session.setAttribute("khachHang", null);
				response.sendRedirect("DangNhap");
			}
			if (session.getAttribute("khachHang") != null) response.sendRedirect("TrangChu");
			RequestDispatcher rd=request.getRequestDispatcher("DangNhap.jsp");
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
