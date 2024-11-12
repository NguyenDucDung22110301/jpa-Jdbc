package dto;


import java.util.Date;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@Builder
public class BookInfoDTO {
	private int bookid;
	private String title;
    private String isbn;
    private String author_name;
    private String publisher;
    private Date publish_date;
    private int quantity;
    private String reviewText;
    // Constructor cần thiết
    public BookInfoDTO(int bookid, String title, String isbn, String author_name, String publisher, Date publish_date, int quantity, String reviewText) {
        this.bookid = bookid;
    	this.title = title;
        this.isbn = isbn;
        this.author_name = author_name;
        this.publisher = publisher;
        this.publish_date = publish_date;
        this.quantity = quantity;
        this.reviewText = reviewText;
    }
}
