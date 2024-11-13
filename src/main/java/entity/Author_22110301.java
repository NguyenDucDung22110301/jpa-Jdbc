package entity;

import java.util.Date;
import java.util.Set;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "authors")
@Getter
@Setter
public class Author {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int author_id;
    private String author_name;
    private Date date_of_birth;
    @ManyToMany(mappedBy = "authors")
    private Set<Book> books;
    // Getters and Setters
}