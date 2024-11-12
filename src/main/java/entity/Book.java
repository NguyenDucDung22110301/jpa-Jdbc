package entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

@Entity
@Table(name = "books")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Data
@NamedQuery(name = "Book.findAll", query = "SELECT b FROM Book b")
public class Book implements Serializable {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int bookid;
    private String title;
    private String isbn;
    private String description;
    private double price;
    private Date publish_date;
    private String cover_image;
    private int quantity;
    private String publisher;
    @OneToMany(mappedBy = "book")
    private Set<Rating> ratings;

    @ManyToMany
    @JoinTable(
        name = "book_author",
        joinColumns = @JoinColumn(name = "bookid"),
        inverseJoinColumns = @JoinColumn(name = "author_id")
    )
    private Set<Author> authors;

}
