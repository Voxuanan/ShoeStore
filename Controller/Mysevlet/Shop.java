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
import bean.KhachHang;
import bean.Loai;
import bo.GiayBO;
import bo.KhachHangBO;
import bo.LoaiBO;

/**
 * Servlet implementation class Shop
 */
@WebServlet("/Shop")
public class Shop extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Shop() {
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
		

			request.setAttribute("page", page);
			session.setAttribute("dsGiay", dsGiay);
			session.setAttribute("dsLoai", dsLoai);
			RequestDispatcher rd = request.getRequestDispatcher("Shop.jsp");
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
