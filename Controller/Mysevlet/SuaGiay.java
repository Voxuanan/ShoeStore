package Mysevlet;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import bean.Giay;
import bean.Loai;
import bo.GiayBO;
import bo.GioHangBO;
import bo.LoaiBO;

/**
 * Servlet implementation class SuaGiay
 */
@WebServlet("/SuaGiay")
public class SuaGiay extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SuaGiay() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		 DiskFileItemFactory factory = new DiskFileItemFactory();
		 DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
		 ServletFileUpload upload = new ServletFileUpload(fileItemFactory);
		 upload.setHeaderEncoding("UTF-8");
		 String tenGiay = null;
		 long soLuongTon = 0;
		 long gia = 0;
		 long maLoai= 0;
		 String anh = null;
		 String size = null;
		 String mau = null;
		 String moTa = null;
		try {
			List<FileItem> fileItems = upload.parseRequest(request);//Lấy về các đối tượng gửi lên
			//duyệt qua các đối tượng gửi lên từ client gồm file và các control
			for (FileItem fileItem : fileItems) {
				if (!fileItem.isFormField()) {//Nếu ko phải các control=>upfile lên
					// xử lý file
					String nameimg = fileItem.getName();
					if (!nameimg.equals("")) {
				           //Lấy đường dẫn hiện tại, chủ ý xử lý trên dirUrl để có đường dẫn đúng
						String dirUrl = request.getServletContext().getRealPath("") +  "assets/img/product" ;
						File dir = new File(dirUrl);
						if (!dir.exists()) {//nếu ko có thư mục thì tạo ra
							dir.mkdir();
						}
							String fileImg = dirUrl + File.separator + nameimg;
							anh = nameimg;
					           File file = new File(fileImg);//tạo file
					            try {
					               fileItem.write(file);//lưu file
					              System.out.println("UPLOAD THÀNH CÔNG...!");
					              System.out.println("Đường dẫn lưu file là: "+dirUrl);
								 } catch (Exception e) {
								    e.printStackTrace();
								 }
					}
				 }
				else//Neu la control
				{
					String tentk=fileItem.getFieldName();
					if(tentk.equals("tenGiay"))
						tenGiay = fileItem.getString("UTF-8");
					if(tentk.equals("soLuongTon"))
						soLuongTon = Long.parseLong(fileItem.getString());
					if(tentk.equals("gia"))
						gia = Long.parseLong(fileItem.getString());
					if(tentk.equals("maLoai"))
						maLoai = Long.parseLong(fileItem.getString());
					if(tentk.equals("anh"))
						anh =  fileItem.getString("UTF-8");
					if(tentk.equals("size"))
						size =  fileItem.getString("UTF-8");
					if(tentk.equals("mau"))
						mau =  fileItem.getString("UTF-8");
					if(tentk.equals("moTa"))
						moTa =  fileItem.getString("UTF-8");
				}
			}

		} catch (FileUploadException e) {
			e.printStackTrace();
		}
		
		try {
			GiayBO gBO = new GiayBO();
			LoaiBO lBO = new LoaiBO();
			ArrayList<Loai> dsLoai = lBO.getLoai();
			session.setAttribute("dsLoai", dsLoai);
			String maGiay = request.getParameter("maGiay");
			if (maGiay != null) {
				Giay thongTinGiay = gBO.getGiayTheoMa(Long.parseLong(maGiay));
				request.setAttribute("thongTinGiay", thongTinGiay);	
				if (tenGiay!=null) {
					if (anh == null) anh = thongTinGiay.getAnh();
					if (moTa==null || moTa.equals("")) moTa = tenGiay +" hiện đã có sẵn tại Shoe Store với mức giá hấp dẫn, đừng bỏ lỡ cơ hội của mình nhé!";
					gBO.suaGiay(Long.parseLong(maGiay), tenGiay, soLuongTon, gia, maLoai, anh, size, mau, moTa);
					response.sendRedirect("QuanLyGiay");
				}
			}
			
			if (session.getAttribute("admin") == null) response.sendRedirect("DangNhapAdmin");	
			RequestDispatcher rd=request.getRequestDispatcher("ADMIN/SuaGiay.jsp");
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
