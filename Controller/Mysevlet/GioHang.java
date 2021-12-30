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
import bo.GioHangBO;
import bo.LoaiBO;

/**
 * Servlet implementation class GioHang
 */
@WebServlet("/GioHang")
public class GioHang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GioHang() {
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
			
			String maGiay=request.getParameter("maGiay");
			String maXoa=request.getParameter("maXoa");
			String xoaTatCa=request.getParameter("xoaTatCa");
			String maSua=request.getParameter("maSua");
			String soLuong=request.getParameter("soLuong");
			GioHangBO ghBO = null;
			if (session.getAttribute("ghBO") !=null){
				ghBO=(GioHangBO)session.getAttribute("ghBO");
			} else {
				ghBO = new GioHangBO();
				session.setAttribute("ghBO", ghBO);
			}

			if (maGiay!=null){
				if (soLuong != null) {
					ghBO=(GioHangBO)session.getAttribute("ghBO");
					Giay thongTinGiay = gBO.getGiayTheoMa(Long.parseLong(maGiay));
					ghBO.Them(thongTinGiay.getMaGiay(), thongTinGiay.getTenGiay(), Long.parseLong(soLuong), thongTinGiay.getGia(), thongTinGiay.getAnh(), thongTinGiay.getSize(), thongTinGiay.getMau());
					session.setAttribute("ghBO", ghBO);
		  		} else {
				ghBO=(GioHangBO)session.getAttribute("ghBO");
				Giay thongTinGiay = gBO.getGiayTheoMa(Long.parseLong(maGiay));
				ghBO.Them(thongTinGiay.getMaGiay(), thongTinGiay.getTenGiay(), 1, thongTinGiay.getGia(), thongTinGiay.getAnh(), thongTinGiay.getSize(), thongTinGiay.getMau());
				session.setAttribute("ghBO", ghBO);
		  		}
			}
			if (maXoa!=null){
				ghBO=(GioHangBO)session.getAttribute("ghBO");
				ghBO.Xoa(Long.parseLong(maXoa));
				session.setAttribute("ghBO", ghBO);
			}
			if (xoaTatCa!=null){
				ghBO=(GioHangBO)session.getAttribute("ghBO");
				ghBO.XoaTatCa();
				session.setAttribute("ghBO", ghBO);
			}
			
			if (maSua !=null){
		  		if (soLuong != null) {
		  			ghBO=(GioHangBO)session.getAttribute("ghBO");
		  			ghBO.SuaSoLuong(Long.parseLong(maSua), Long.parseLong(soLuong));
					session.setAttribute("ghBO", ghBO);
		  		}
		  	}
			
			long tongTien= 0;
			if (ghBO !=null) {
				for (bean.GioHang gh: ghBO.ds) {
					tongTien= tongTien + gh.getGia()*gh.getSoLuong();
				}
			}
			session.setAttribute("tongTien",tongTien);
			session.setAttribute("ghBO", ghBO);
			
			if (maGiay!=null || maXoa!=null || xoaTatCa!=null || maSua!=null || soLuong!=null ) response.sendRedirect("GioHang");
			RequestDispatcher rd = request.getRequestDispatcher("GioHang.jsp");
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
