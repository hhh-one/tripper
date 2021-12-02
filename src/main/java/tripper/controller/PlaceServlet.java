package tripper.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tripper.domain.BusanVO;
import tripper.domain.SeoulVO;
import tripper.persistence.BusanDAO;
import tripper.persistence.SeoulDAO;

/**
 * Servlet implementation class PlaceServlet
 */
@WebServlet("/PlaceServlet")
public class PlaceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlaceServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String cmdReq = "";
		cmdReq = request.getParameter("cmd");
		String where = "";
		
		if (cmdReq.equals("place")) {
			String place = request.getParameter("place");
			
			if (place.equals("seoul")) {
				SeoulDAO seoulDAO = new SeoulDAO();
				ArrayList<SeoulVO> seoulList = new ArrayList<SeoulVO>();
				
				seoulList = seoulDAO.getSeoulList();
				request.setAttribute("Places", seoulList);
				where = "seoul";
			}
			else if (place.equals("busan")) {
				BusanDAO busanDAO = new BusanDAO();
				ArrayList<BusanVO> busanList = new ArrayList<BusanVO>();
				
				busanList = busanDAO.getBusanList();
				request.setAttribute("Places", busanList);
				where = "busan";
			}
			
			request.setAttribute("where", where);
			request.setAttribute("setPlace", "true");
			RequestDispatcher view = request.getRequestDispatcher("place.jsp");
			view.forward(request, response);
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
