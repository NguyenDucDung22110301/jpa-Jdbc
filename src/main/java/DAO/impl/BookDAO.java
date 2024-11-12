package DAO.impl;

import java.util.List;

import DAO.IBookDAO;
import configs.JpaConfig;
import dto.BookInfoDTO;
import entity.Book;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;

public class BookDAO implements IBookDAO {
	@Override
	public List<Book> findAll() {
		EntityManager enma = JpaConfig.getEntityManager();
		return enma.createNamedQuery("Book.findAll", Book.class).getResultList();
	}
	@Override
	public List<BookInfoDTO> getBookInfo() {
	    EntityManager enma = JpaConfig.getEntityManager();
	    // JPQL query để lấy thông tin về sách và tác giả
	    String jpql = "SELECT  new dto.BookInfoDTO(b.bookid,b.title, b.isbn, a.author_name, b.publisher, b.publish_date, b.quantity, r.reviewText) " +
                "FROM Book b " +
                "JOIN b.authors a " +
                "LEFT JOIN b.ratings r";

	    // Thực thi truy vấn và trả về danh sách BookInfoDTO
	    TypedQuery<BookInfoDTO> query = enma.createQuery(jpql, BookInfoDTO.class);
	    System.out.println(query.getResultList());
	    try {
	        return query.getResultList();
	    } catch (Exception e) {
	    	System.out.println("sadsadsd");
	        e.printStackTrace(); // Log lỗi chi tiết
	        throw e;
	    }
	}
}
