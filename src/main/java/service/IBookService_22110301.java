package service;

import java.util.List;

import dto.BookInfoDTO_22110301;
import entity.Book_22110301;

public interface IBookService {

	List<Book_22110301> findALL();
	List<BookInfoDTO_22110301> getBookInfor();
}
