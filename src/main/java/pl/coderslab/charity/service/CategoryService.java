package pl.coderslab.charity.service;

import pl.coderslab.charity.model.Category;

import java.util.List;
import java.util.Optional;

public interface CategoryService {
    List<Category> getCategory();
    Optional<Category> getCategoryByName( String name);
}
