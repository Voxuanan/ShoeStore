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

import bean.Admin;
import bean.KhachHang;
import bean.Loai;
import bo.AdminBO;
import bo.KhachHangBO;
import bo.LoaiBO;

/**
 * Servlet implementation class DangNhapAdmin
 */
@WebServlet("/DangNhapAdmin")
public class DangNhapAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DangNhapAdmin() {
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
			
			String tenDangNhap = request.getParameter("tenDangNhap");
			String matKhau = request.getParameter("matKhau");
			KhachHangBO khBO = new KhachHangBO();
			if (matKhau!=null) matKhau = khBO.maHoa(matKhau);
			String dangXuat = request.getParameter("dangXuat");
			AdminBO adminBO = new AdminBO();
			ArrayList<Admin> ds;

			if (tenDangNhap != null && matKhau!=null) {
				ds=adminBO.getAdmin(tenDangNhap,matKhau);
				Admin admin = adminBO.Tim(tenDangNhap, matKhau);
				if (admin!=null) {
					session.setAttribute("admin", admin);
				} else request.setAttribute("errorDangNhap", "Tên tài khoản hoặc mật khẩu không đúng");
			} 
			if (dangXuat != null) {
				ds=null;
				session.setAttribute("admin", null);
				response.sendRedirect("DangNhapAdmin");
			}
			
			if (session.getAttribute("admin") != null) response.sendRedirect("QuanLyGiay");
			RequestDispatcher rd=request.getRequestDispatcher("ADMIN/DangNhap.jsp");
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
