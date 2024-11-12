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

@WebServlet (urlPatterns ={"/views/user/Login"})
public class LonginUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LonginUser() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        String url  = request.getRequestURI();
        System.out.println(url + " 12312321");
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
            	// vì em chọn lưu bằng email chứ không phải là user name,
            	// nên đây là cách lấy dữ liệu
                if (cookie.getName().equals("email")) {
                    session = request.getSession(true);
                    session.setAttribute("account", cookie.getValue());
                    response.sendRedirect(request.getContextPath() + "/views/user/books");
                    return;
                }
            }
        }

        // Kiểm tra session
        if (session != null && session.getAttribute("account") != null) {
            response.sendRedirect(request.getContextPath() + "/views/user/books");
        } else {
            response.sendRedirect("login.jsp");
        }
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		boolean isRememberMe = false;	
		String remember = request.getParameter("remember");
		 if("on".equals(remember)){
			 isRememberMe = true;
		 }
		 String alertMsg="";
		 if(email.isEmpty() || password.isEmpty()){
			 alertMsg = "Tài khoản hoặc mật khẩu không được rỗng";
			 request.setAttribute("alert", alertMsg);
			 request.getRequestDispatcher("/views/user/login.jsp").forward(request, response);
			 return;
		 }
		 UserService service = new UserServiceImpl();
		 if(service.checkEmailExist(email)) {
			 if(service.checkPassword(email, password)){
				  HttpSession session = request.getSession(true);
				  session.setAttribute("account", email);
				  if(isRememberMe){
					  saveRemeberMe(response, email);
				  }
				  response.sendRedirect(request.getContextPath() + "/views/user/books");
			 }else{
				  alertMsg = "Tài khoản hoặc mật khẩu không đúng";
				  request.setAttribute("alert", alertMsg);
				  request.getRequestDispatcher("/views/user/login.jsp").forward(request, response);
				  }
		 }else {
			 alertMsg = "Đã tồn tại email";
			  request.setAttribute("alert", alertMsg);
			  request.getRequestDispatcher("/views/user/login.jsp").forward(request, response);
		 }
	}
	private void saveRemeberMe(HttpServletResponse response, String email){
		 Cookie cookie = new Cookie(Constant.COOKIE_REMEMBER, email);
		 cookie.setMaxAge(30*60);
		 response.addCookie(cookie);
	 }

}
