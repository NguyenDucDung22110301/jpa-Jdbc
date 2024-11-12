package service.impl;

import java.util.List;

import DAO.IBookDAO;
import DAO.impl.BookDAO;
import dto.BookInfoDTO;
import entity.Book;
import service.IBookService;

public class BookServiceImple implements IBookService {
	IBookDAO bookDao = new BookDAO();
	
	@Override
	public List<Book> findALL() {
		return bookDao.findAll();
	}

	@Override
	public List<BookInfoDTO> getBookInfor() {
		return bookDao.getBookInfo();
	}

}
