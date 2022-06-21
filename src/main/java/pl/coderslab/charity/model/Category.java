package pl.coderslab.charity.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
@Entity
@Table(name = "category")
@Getter @Setter
@NoArgsConstructor
@AllArgsConstructor
@SuperBuilder
public class Category {

    /*
    Utwórz encję: Category
zawierającą pola:

- id
- name

Utwórz repozytorium dla tej encji (jeśli chcesz możesz utworzyć serwis, jednak nie jest to konieczne).

Encja ta reprezentuje dane znajdujące się w aplikacji, np:
**name**: ubrania, zabawki
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @Column(nullable = false, unique = true)
    private String name;
}

