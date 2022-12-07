package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.loaibean;
import bean.sachbean;
import bo.giohangbo;
import bo.loaibo;
import bo.sachbo;

/**
 * Servlet implementation class htsach
 */
@WebServlet("/htsach")
public class htsach extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public htsach() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		
		loaibo lbo = new loaibo();
		ArrayList<loaibean> dsloai = lbo.getloai();
		request.setAttribute("dsloai", dsloai);
		
		ArrayList<sachbean> dssach;
		if (session.getAttribute("dssach") == null){
			dssach = new ArrayList<sachbean>();
			session.setAttribute("dssach", dssach);
		}
		
		dssach = (ArrayList<sachbean>) session.getAttribute("dssach");
		
		sachbo sbo = new sachbo();
		
		if (request.getParameter("search")!=null){
			dssach = sbo.getsach();
		    dssach = sbo.timKiemTheoTen(dssach, request.getParameter("search"));
		}
		else if (request.getParameter("ml")!=null){
			dssach = sbo.getsach();
		    dssach = sbo.timKiemTheoLoai(dssach, request.getParameter("ml"));
		}
		else {
			dssach = sbo.getsach();
		}
		   int trang;
	  		if(request.getParameter("trang") == null) {
	  			trang = 1;
	  		}else trang = Integer.parseInt(request.getParameter("trang"));
	  		
		
		session.setAttribute("dssach", dssach);
		
		RequestDispatcher rd = request.getRequestDispatcher("htsach.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
