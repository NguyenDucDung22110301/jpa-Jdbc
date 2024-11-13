package controller.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import service.UserService;
import service.impl.UserServiceImpl;

import java.io.IOException;

import Util.Constant;
import entity.User;


@WebServlet(urlPatterns ={"/views/user/Register"})
public class RegisterUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegisterUserController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if (session != null && session.getAttribute("fullName") != null) {
			response.sendRedirect(request.getContextPath() + "/views/user/Register.jsp");
			return;
		}
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("username")) {
					session = request.getSession(true);
					session.setAttribute("username", cookie.getValue());
					response.sendRedirect(request.getContextPath() + "/views/user/Register.jsp");
					return;
				}
			}
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		String email = request.getParameter("email");
		String fullName = request.getParameter("fullName");
		int phone = Integer.parseInt(request.getParameter("phone"));
		String password = request.getParameter("password");
		String repassword = request.getParameter("rePassword");
		UserService service = new UserServiceImpl();
		String alertMsg = "";
		User user = User.builder().email(email).fullname(fullName).phone(phone).passwd(password).build();
		service.insert(user);
		if (user != null) {
			// SendMail sm = new SendMail();
			// sm.sendMail(email, "Shopping.iotstar.vn", "Welcome to Shopping. Please Login
			// to use service. Thanks !");
			request.setAttribute("alert", alertMsg);
			response.sendRedirect(request.getContextPath() + "/views/user/Home.jsp");
		} else {
			alertMsg = "System error!";
			request.setAttribute("alert", alertMsg);
			request.getRequestDispatcher(Constant.REGISTER).forward(request, response);
		}
	}

}
