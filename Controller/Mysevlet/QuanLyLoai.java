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

import bean.Loai;
import bo.LoaiBO;

/**
 * Servlet implementation class QuanLyLoai
 */
@WebServlet("/QuanLyLoai")
public class QuanLyLoai extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuanLyLoai() {
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
;

			String maLoai = request.getParameter("maLoai");
			String tenLoai = request.getParameter("tenLoai");
			String themLoai = request.getParameter("themLoai");
			String suaLoai = request.getParameter("suaLoai");
			String maXoa= request.getParameter("maXoa");
			
			if (themLoai!=null) {
				lBO.ThemLoai(tenLoai);
				dsLoai = lBO.getLoai();
			}
			if (suaLoai!=null) {
				lBO.SuaLoai(Long.parseLong(maLoai), tenLoai);
				dsLoai = lBO.getLoai();
			}
			if (maXoa!=null) {
				lBO.XoaLoai(Long.parseLong(maXoa));
				dsLoai = lBO.getLoai();
				session.setAttribute("dsLoai", dsLoai);
				response.sendRedirect("QuanLyLoai");
			} 
	
			session.setAttribute("dsLoai", dsLoai);
			if (session.getAttribute("admin") == null) response.sendRedirect("DangNhapAdmin");
			RequestDispatcher rd = request.getRequestDispatcher("ADMIN/QuanLyLoai.jsp");
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
