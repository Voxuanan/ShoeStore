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

import bean.ChiTietHoaDon;
import bean.HoaDon;
import bean.Loai;
import bo.ChiTietHoaDonBO;
import bo.HoaDonBO;
import bo.LoaiBO;

/**
 * Servlet implementation class QuanLyHoaDon
 */
@WebServlet("/QuanLyHoaDon")
public class QuanLyHoaDon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuanLyHoaDon() {
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
			
			ChiTietHoaDonBO cthdBO = new ChiTietHoaDonBO();
			HoaDonBO hdBO = new HoaDonBO();
			ArrayList<HoaDon> dsHoaDon = hdBO.getTatCaHoaDon();
			ArrayList<ChiTietHoaDon> dsChiTietHoaDon = null;
			String maHoaDon = request.getParameter("maHoaDon");
			String xemChiTiet = request.getParameter("xemChiTiet");
			String suaHoaDon = request.getParameter("suaHoaDon");
			String suaChiTiet = request.getParameter("suaChiTiet");
			String maXoa = request.getParameter("maXoa");
			String xoaChiTiet = request.getParameter("xoaChiTiet");
			String daMuaHoaDon = request.getParameter("daMuaHoaDon");
			String maGiay = request.getParameter("maGiay");
			String soLuong = request.getParameter("soLuong");
			String daMuaChiTiet = request.getParameter("daMuaChiTiet");
			String maChiTietHoaDon = request.getParameter("maChiTietHoaDon");
			String maKhachHang = request.getParameter("maKhachHang");
			String addCTHD = request.getParameter("addCTHD");
			
			if (addCTHD != null) {
				cthdBO.TaoChiTietHoaDon(Long.parseLong(maHoaDon), Long.parseLong(maGiay), Long.parseLong(soLuong),Boolean.parseBoolean(daMuaChiTiet));
			}
			
			if (maKhachHang !=null) {
				hdBO.TaoHoaDon(Long.parseLong(maKhachHang));
				dsHoaDon = hdBO.getTatCaHoaDon();
			}
			if (xemChiTiet !=null) {
				dsChiTietHoaDon = cthdBO.getChiTietHoaDon1(Long.parseLong(maHoaDon));	
			}
			
			if (suaHoaDon!=null) {
				hdBO.SuaHoaDon(Long.parseLong(maHoaDon), Boolean.parseBoolean(daMuaHoaDon));
				dsHoaDon = hdBO.getTatCaHoaDon();
			}
			
			if (suaChiTiet!=null) {
				cthdBO.SuaChiTietHoaDon(Long.parseLong(maGiay), Long.parseLong(soLuong), Boolean.parseBoolean(daMuaChiTiet), Long.parseLong(maChiTietHoaDon));
			}
			
			if (maXoa !=null) {
				hdBO.XoaHoaDon(Long.parseLong(maXoa));
				dsHoaDon = hdBO.getTatCaHoaDon();
				response.sendRedirect("QuanLyHoaDon");
			}
			
			if (xoaChiTiet !=null) {
				cthdBO.XoaChiTietHoaDon(Long.parseLong(xoaChiTiet));
				response.sendRedirect("QuanLyHoaDon");
			}
			
			request.setAttribute("maHoaDon", maHoaDon);
			request.setAttribute("dsHoaDon", dsHoaDon);
			request.setAttribute("dsChiTietHoaDon", dsChiTietHoaDon);
			if (session.getAttribute("admin") == null) response.sendRedirect("DangNhapAdmin");
			RequestDispatcher rd = request.getRequestDispatcher("ADMIN/QuanLyHoaDon.jsp");
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
