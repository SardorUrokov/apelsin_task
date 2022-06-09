package uz.pdp.repository;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import uz.pdp.entity.Payment;

import java.util.List;

public class PaymentRepositoryImpl implements PaymentRepository{
    JdbcTemplate jdbcTemplate;

    public PaymentRepositoryImpl(DriverManagerDataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public int create(Payment payment) {
        try {
            return jdbcTemplate.update("insert into payment(Id, time, amount, inv_id) values (?,?,?,?)", payment.getId(), payment.getTime(), payment.getAmount(), payment.getInv_id());

        } catch (Exception e) {
            return 0;
        }
    }

    @Override
    public List<Payment> read() {
        return jdbcTemplate.query("select * from payment", BeanPropertyRowMapper.newInstance(Payment.class));
    }

    @Override
    public Payment findPaymentById(int paymentId) {
        return jdbcTemplate.queryForObject("SELECT * FROM payment WHERE id=?", BeanPropertyRowMapper.newInstance(Payment.class), paymentId);
    }

    @Override
    public int update(Payment payment) {
        return jdbcTemplate.update("UPDATE payment SET time=?, amount=?, inv_id=? WHERE id=?", payment.getTime(), payment.getAmount(), payment.getInv_id());

    }

    @Override
    public int delete(int paymentId) {
        return jdbcTemplate.update("DELETE FROM payment WHERE id=?", paymentId);
    }
}
