package pl.coderslab.charity.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name ="institution")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@SuperBuilder
public class Institution{
    /*
    Utwórz encję: Institution - reprezentującą Fundacje.
zawierającą pola:

- id
- name
- description

Utwórz repozytorium dla tej encji (jeśli chcesz możesz utworzyć serwis, jednak nie jest to konieczne).

Encja ta reprezentuje dane znajdujące się w aplikacji, np:
**name** : Fundacja “Bez domu”
**description** : Cel i misja: Pomoc dla osób nie posiadających miejsca zamieszkania
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private String name;

    @NotBlank
    private String description;

}
