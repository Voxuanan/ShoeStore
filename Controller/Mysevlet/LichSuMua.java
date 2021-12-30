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
import bean.Giay;
import bean.GioHang;
import bean.HoaDon;
import bean.KhachHang;
import bean.Loai;
import bo.ChiTietHoaDonBO;
import bo.GiayBO;
import bo.GioHangBO;
import bo.HoaDonBO;
import bo.LoaiBO;

/**
 * Servlet implementation class LichSuMua
 */
@WebServlet("/LichSuMua")
public class LichSuMua extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LichSuMua() {
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
			gBO.getGiay();
			session.setAttribute("gBO", gBO);
			
			ChiTietHoaDonBO cthdBO = new ChiTietHoaDonBO();
			HoaDonBO hdBO = new HoaDonBO();		
			String maHoaDon = request.getParameter("maHoaDon");	
			GioHangBO ghBO = null;
			if (session.getAttribute("ghBO") !=null){
				ghBO=(GioHangBO)session.getAttribute("ghBO");
			}
			ArrayList<ChiTietHoaDon> dsChiTietHoaDon= null;
			KhachHang kh=null;
			ArrayList<HoaDon> dsHoaDon = null;
			if (session.getAttribute("khachHang") !=null) {
				kh = (KhachHang)session.getAttribute("khachHang");
				dsHoaDon = hdBO.getHoaDon(kh.getMaKH());
			}
			if (maHoaDon != null) {
				if (dsHoaDon!=null) {
					for (HoaDon hd: dsHoaDon)
						if (hd.getMaHoaDon() == Long.parseLong(maHoaDon)){
							dsChiTietHoaDon = cthdBO.getChiTietHoaDon1(Long.parseLong(maHoaDon));	
						}
				}
			}
			
			
			String thanhToan = request.getParameter("thanhToan");
			if (thanhToan!=null && kh!=null){
				hdBO.TaoHoaDon(kh.getMaKH());
				dsHoaDon = hdBO.getHoaDon(kh.getMaKH());
				for (GioHang g: ghBO.ds) {
					cthdBO.TaoChiTietHoaDon(dsHoaDon.get(0).getMaHoaDon(),g.getMaGiay(),g.getSoLuong(),false);
				}
				//3. clear
				dsHoaDon = hdBO.getHoaDon(kh.getMaKH());
				ghBO=(GioHangBO)session.getAttribute("ghBO");
				ghBO.XoaTatCa();
				session.setAttribute("ghBO", ghBO);	
				session.setAttribute("tongTien",0);
			}
			
			if (thanhToan!=null) response.sendRedirect("LichSuMua");
			
			session.setAttribute("hdBO", hdBO);
			request.setAttribute("dsHoaDon", dsHoaDon);
			request.setAttribute("dsChiTietHoaDon", dsChiTietHoaDon);
			
			RequestDispatcher rd = request.getRequestDispatcher("LichSuMua.jsp");
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
