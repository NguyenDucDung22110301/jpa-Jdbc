package controller.BookController;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.IBookService;
import service.impl.BookServiceImple;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dto.BookInfoDTO;
import entity.Book;


@WebServlet (urlPatterns ={"/views/user/books", "/views/book/readOnly", "/views/book/insert",
							"/views/book/listBook"})
public class BookController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public BookController() {
        super();
    }
    public IBookService bookSer = new BookServiceImple();
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri  = req.getRequestURI();
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		if(uri.contains("/views/user/books")) {
			List<BookInfoDTO> list = bookSer.getBookInfor();
			  if (list == null) {
	                System.out.println("No books found!");
	                list = new ArrayList<>();
	            }
			req.setAttribute("listcase", list);
			req.getRequestDispatcher("/views/user/Home.jsp").forward(req, resp);
		}
		if(uri.contains("/readOnly")) {
			System.out.println("hellooo???");
			resp.sendRedirect(req.getContextPath() + "/views/book/DetailBook.jsp");
		}
		else if(uri.contains("/insert")) {
			System.out.println("insserrtttttt");
			req.getRequestDispatcher("/views/book/AddBook.jsp").forward(req, resp);
		}else if(uri.contains("/listBook")) {
			List<Book> list = bookSer.findALL();
			req.setAttribute("listcase", list);
			req.getRequestDispatcher("/views/book/ListBook.jsp").forward(req, resp);
		}
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri  = req.getRequestURI();
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		if(uri.contains("/insert")) {
			System.out.println("insserrtttttt");
			resp.sendRedirect(req.getContextPath() + "/views/book/AddBook.jsp");
		}
	}

}
