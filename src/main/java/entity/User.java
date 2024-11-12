package entity;



import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;
import java.util.Set;

@Entity
@Table(name = "users")
@Getter
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Setter
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int userid;
    private String email;
    private String fullname;
    private int phone;
    private String passwd;
    private Date signup_date;
    private Date last_login;
    private boolean is_admin;
    
    @OneToMany(mappedBy = "user")
    private Set<Rating> ratings;
}
