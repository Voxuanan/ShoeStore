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
 * Servlet implementation class ChiTietSanPham
 */
@WebServlet("/ChiTietSanPham")
public class ChiTietSanPham extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChiTietSanPham() {
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
			ArrayList<Giay> dsGiay = gBO.getGiay();
			
			String maGiay = request.getParameter("maGiay");
			if (maGiay != null) {
				Giay thongTinGiay = gBO.getGiayTheoMa(Long.parseLong(maGiay));
				dsGiay = gBO.getGiayTheoLoai(thongTinGiay.getMaLoai());
				request.setAttribute("thongTinGiay", thongTinGiay);
			}
			
			session.setAttribute("dsGiay", dsGiay);
			RequestDispatcher rd=request.getRequestDispatcher("ChiTietSanPham.jsp");
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
