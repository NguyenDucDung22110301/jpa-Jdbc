package entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "book_author")
@Getter
@Setter
public class BookAuthor {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	  @ManyToOne
	  @JoinColumn(name = "bookid")
	  private Book book;
	    
	  @ManyToOne
	  @JoinColumn(name = "author_id")
	  private Author author;
}