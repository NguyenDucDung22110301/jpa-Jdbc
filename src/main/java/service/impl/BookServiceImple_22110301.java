package service.impl;

import java.util.List;

import DAO.IBookDAO_22110301;
import DAO.impl.BookDAO_22110301_22110301;
import dto.BookInfoDTO_22110301;
import entity.Book_22110301;
import service.IBookService;

public class BookServiceImple implements IBookService {
	IBookDAO_22110301 bookDao = new BookDAO_22110301_22110301();
	
	@Override
	public List<Book_22110301> findALL() {
		return bookDao.findAll();
	}

	@Override
	public List<BookInfoDTO_22110301> getBookInfor() {
		return bookDao.getBookInfo();
	}

}
