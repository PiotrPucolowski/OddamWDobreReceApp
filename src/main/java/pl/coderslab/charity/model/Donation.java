package pl.coderslab.charity.model;

import lombok.*;
import lombok.experimental.SuperBuilder;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;
@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@SuperBuilder
@Table(name = "donation")
public class Donation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Integer quantity;

    @ManyToMany
    @ToString.Exclude
    @JoinTable(name = "donations_categories",
            joinColumns = @JoinColumn(name="donation_id"),
            inverseJoinColumns = @JoinColumn(name="category_id"))
    private List<Category> categories= new ArrayList<>();

    @ManyToOne
    private Institution institution;

    private String street;

    private String city;

    private String zipCode; //varchar (255),
    // varchar (10)<-- lepsze

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate pickUpDate;

    private LocalTime pickUpTime;

    private String pickUpComment;

}
