package DAO;

import java.util.List;

import dto.BookInfoDTO;
import entity.Book;

public interface IBookDAO {

	List<Book> findAll();

	List<BookInfoDTO> getBookInfo();

}
