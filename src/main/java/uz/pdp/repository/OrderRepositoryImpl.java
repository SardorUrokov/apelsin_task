package uz.pdp.repository;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import uz.pdp.entity.Orders;

import java.util.List;

public class OrderRepositoryImpl implements OrderRepository{
    JdbcTemplate jdbcTemplate;

    public OrderRepositoryImpl(DriverManagerDataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public int create(Orders order) {

        try {
            return jdbcTemplate.update("insert into order(Id, date, cust_id) values (?,?,?)", order.getId(), order.getDate(), order.getCust_id());

        } catch (Exception e) {
            return 0;
        }
    }

    @Override
    public List<Orders> read() {
        return jdbcTemplate.query("select * from order", BeanPropertyRowMapper.newInstance(Orders.class));
    }

    @Override
    public Orders findOrderById(int orderId) {
        return jdbcTemplate.queryForObject("SELECT * FROM order WHERE id=?", BeanPropertyRowMapper.newInstance(Orders.class), orderId);
    }

    @Override
    public int update(Orders order) {
        return jdbcTemplate.update("UPDATE order SET date=?, cust_id=? WHERE id=?", order.getDate(), order.getCust_id());

    }

    @Override
    public int delete(int orderId) {
        return jdbcTemplate.update("DELETE FROM order WHERE id=?", orderId);
    }
}
