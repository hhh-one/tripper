package tripper.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tripper.domain.UserVO;
import tripper.persistence.UserDAO;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String cmdReq = "";
		cmdReq = request.getParameter("cmd");
		
		if (cmdReq.equals("login")) {
			RequestDispatcher view = request.getRequestDispatcher("login.jsp");
			view.forward(request, response);
		}
		else if(cmdReq.equals("home")) {
			RequestDispatcher view = request.getRequestDispatcher("home.jsp");
			view.forward(request, response);
		}
		else if(cmdReq.equals("join")) {
			RequestDispatcher view = request.getRequestDispatcher("signup.jsp");
			view.forward(request, response);
		}
		else if(cmdReq.equals("course")) {
			RequestDispatcher view = request.getRequestDispatcher("course.jsp");
			view.forward(request, response);
		}
		else if(cmdReq.equals("profile")) {
			RequestDispatcher view = request.getRequestDispatcher("mypage.jsp");
			view.forward(request, response);
		}
		else if(cmdReq.equals("logout")) {
			HttpSession session = request.getSession();
			session.setAttribute("isLogined", "false");
			session.removeAttribute("id");
			
			RequestDispatcher view = request.getRequestDispatcher("home.jsp");
			view.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String cmdReq = "";
		cmdReq = request.getParameter("cmd");
		
		String message = "";
		
		if (cmdReq.equals("login")) {
			UserVO userVO = new UserVO();
			
			userVO.setId(request.getParameter("id"));
			userVO.setPasswd(request.getParameter("passwd"));
			
			UserDAO userDAO = new UserDAO();
			if (userDAO.checkLogin(userVO.getId(), userVO.getPasswd())) {
				HttpSession session = request.getSession();
				
				session.setAttribute("isLogined", "true");
				session.setAttribute("id", userVO.getId());
				
				RequestDispatcher view = request.getRequestDispatcher("home.jsp");
				view.forward(request, response);
			}
			else {
				message = "아이디 또는 비밀번호가 잘못 입력되었습니다.";
				request.setAttribute("loginError", message);
				
				RequestDispatcher view = request.getRequestDispatcher("login.jsp");
				view.forward(request, response);
			}
		}
		else if (cmdReq.equals("signup")) {
			UserVO user = new UserVO();
			UserDAO userDAO = new UserDAO();
			
			user.setId(request.getParameter("id"));
			user.setPasswd(request.getParameter("passwd"));
			user.setUsername(request.getParameter("username"));
			user.setMobile(request.getParameter("mobile"));
			user.setEmail(request.getParameter("email"));
			
			userDAO.insertUser(user);
			
			request.setAttribute("userInfo", user);
			RequestDispatcher view = request.getRequestDispatcher("signupResult.jsp");
			view.forward(request, response);
		}
	}

}
