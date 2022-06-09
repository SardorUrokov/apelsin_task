package uz.pdp.repository;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import uz.pdp.entity.Category;

import java.util.List;

public class CategoryRepositoryImpl implements CategoryRepository{
    JdbcTemplate jdbcTemplate;

    public CategoryRepositoryImpl(DriverManagerDataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public int create(Category category) {
        try {
            return jdbcTemplate.update("insert into category(name, Id) values (?,?)", category.getName(), category.getId());

        } catch (Exception e) {
            return 0;
        }
    }

    @Override
    public List<Category> read() {
        return jdbcTemplate.query("select * from category", BeanPropertyRowMapper.newInstance(Category.class));
    }

    @Override
    public Category findCategoryById(int CategoryId) {
        return jdbcTemplate.queryForObject("SELECT * FROM category WHERE id=?", BeanPropertyRowMapper.newInstance(Category.class), CategoryId);

    }

    @Override
    public int update(Category category) {
        return jdbcTemplate.update("UPDATE category SET name=? WHERE id=?", category.getName());

    }

    @Override
    public int delete(int categoryId) {
        return jdbcTemplate.update("DELETE FROM category WHERE id=?", categoryId);
    }
}
