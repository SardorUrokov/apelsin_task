package uz.pdp.repository;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import uz.pdp.entity.Customer;

import java.util.List;

public class CustomerRepositoryImpl implements CustomerRepository{
    JdbcTemplate jdbcTemplate;

    public CustomerRepositoryImpl(DriverManagerDataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public int create(Customer customer) {
        try {
            return jdbcTemplate.update("insert into customer(name, Id, counry, address, phone) values (?,?,?,?,?)", customer.getName(), customer.getId(), customer.getCountry(), customer.getAddress(), customer.getPhone());

        } catch (Exception e) {
            return 0;
        }
    }

    @Override
    public List<Customer> read() {
        return jdbcTemplate.query("select * from customer", BeanPropertyRowMapper.newInstance(Customer.class));
    }

    @Override
    public Customer findCustomerById(int customerId) {
        return jdbcTemplate.queryForObject("SELECT * FROM customer WHERE id=?", BeanPropertyRowMapper.newInstance(Customer.class), customerId);
    }

    @Override
    public int update(Customer customer) {
        return jdbcTemplate.update("UPDATE customer SET name=?, country=?, address=?, phone=? WHERE id=?", customer.getName(), customer.getCountry(), customer.getAddress(), customer.getPhone());
    }

    @Override
    public int delete(int customerId) {
        return jdbcTemplate.update("DELETE FROM customer WHERE id=?", customerId);
    }
}
