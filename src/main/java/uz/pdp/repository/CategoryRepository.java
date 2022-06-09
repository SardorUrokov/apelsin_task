package uz.pdp.repository;

import uz.pdp.entity.Category;

import java.util.List;

public interface CategoryRepository {
    public int create (Category category);

    public List<Category> read();

    public Category findCategoryById (int CategoryId);

    public int update (Category category);

    public int delete (int categoryId);
}
