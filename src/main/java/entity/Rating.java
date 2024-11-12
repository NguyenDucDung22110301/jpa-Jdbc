package entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "rating")
public class Rating {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)  // Tạo khóa chính tự động
    private Long ratingId;
	
    private Long rating;
    private String reviewText;

    @ManyToOne
    @JoinColumn(name = "bookid")
    private Book book;

    @ManyToOne
    @JoinColumn(name = "userid")
    private User user;

    // Getters and setters
}