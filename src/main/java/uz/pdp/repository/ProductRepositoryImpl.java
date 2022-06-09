package uz.pdp.repository;


import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import uz.pdp.entity.Product;

import java.util.List;

public class ProductRepositoryImpl implements ProductRepository{
    JdbcTemplate jdbcTemplate;

    public ProductRepositoryImpl(DriverManagerDataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public int create(Product product) {
        try {
            return jdbcTemplate.update("insert into product(name, Id, category_id, description, price, photo) values (?,?,?,?,?,?)",
                    product.getName(), product.getId(), product.getCategory_id(), product.getDescription(), product.getPrice(), product.getPhoto());

        } catch (Exception e) {
            return 0;
        }
    }

    @Override
    public List<Product> read() {
        return jdbcTemplate.query("select * from product", BeanPropertyRowMapper.newInstance(Product.class));
    }

    @Override
    public Product findProductById(int productId) {
        return jdbcTemplate.queryForObject("SELECT * FROM product WHERE id=?", BeanPropertyRowMapper.newInstance(Product.class), productId);
    }

    @Override
    public int update(Product product) {
        return jdbcTemplate.update("UPDATE product SET name=?, category_id=?, description=?, price=?, photo=? WHERE id=?",
                product.getName(), product.getCategory_id(), product.getDescription(), product.getPrice(), product.getPhoto());

    }

    @Override
    public int delete(int productId) {
        return jdbcTemplate.update("DELETE FROM product WHERE id=?", productId);
    }
}
