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

import bean.Giay;
import bean.Loai;
import bo.GiayBO;
import bo.LoaiBO;

/**
 * Servlet implementation class QuanLyGiay
 */
@WebServlet("/QuanLyGiay")
public class QuanLyGiay extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuanLyGiay() {
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
			
			GiayBO gBO = new GiayBO();
			String maLoai = request.getParameter("maLoai");
			String keySize = request.getParameter("keySize");
			if (keySize == null) keySize = "";
			String keyColor = request.getParameter("keyColor");
			if (keyColor == null) keyColor = "";
			String keySearch = request.getParameter("keySearch");
			if (keySearch == null) keySearch = "";
			String page = request.getParameter("page");
			if (page == null) page = "1";
			ArrayList<Giay> dsGiay ;
			if (maLoai!= null) dsGiay = gBO.timGiay1(Long.parseLong(maLoai), keySize, keyColor, keySearch, Long.parseLong(page));
				else dsGiay = gBO.timGiay(keySize, keyColor, keySearch, Long.parseLong(page));
			
			String maXoa= request.getParameter("maXoa");
			if (maXoa!=null) {
				gBO.xoaGiay(Long.parseLong(maXoa));
				if (maLoai!= null) {
					dsGiay = gBO.timGiay1(Long.parseLong(maLoai), keySize, keyColor, keySearch, Long.parseLong(page));
					response.sendRedirect("QuanLyGiay?maLoai="+maLoai+"&keySize="+keySize+"&keyColor="+keyColor+"&keySearch="+keySearch+"&page="+page);
				}
					else {
						dsGiay = gBO.timGiay(keySize, keyColor, keySearch, Long.parseLong(page));
						response.sendRedirect("QuanLyGiay?keySize="+keySize+"&keyColor="+keyColor+"&keySearch="+keySearch+"&page="+page);
					}
		
			}
			
			request.setAttribute("page", page);
			session.setAttribute("dsLoai", dsLoai);
			request.setAttribute("dsGiay", dsGiay);
			if (session.getAttribute("admin") == null) response.sendRedirect("DangNhapAdmin");
			RequestDispatcher rd = request.getRequestDispatcher("ADMIN/QuanLyGiay.jsp");
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
