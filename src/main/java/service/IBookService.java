package service;

import java.util.List;

import dto.BookInfoDTO;
import entity.Book;

public interface IBookService {

	List<Book> findALL();
	List<BookInfoDTO> getBookInfor();
}
