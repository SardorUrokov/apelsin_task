package uz.pdp.repository;


import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import uz.pdp.entity.Invoice;

import java.util.List;

public class InvoiceRepositoryImpl implements InvoiceRepository{
    JdbcTemplate jdbcTemplate;

    public InvoiceRepositoryImpl(DriverManagerDataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public int create(Invoice invoice) {
        try {
            return jdbcTemplate.update("insert into invoice(Id, ord_id, amount, issued, due) values (?,?,?,?,?)", invoice.getId(), invoice.getOrd_id(), invoice.getAmount(), invoice.getIssued(), invoice.getDue());

        } catch (Exception e) {
            return 0;
        }
    }

    @Override
    public List<Invoice> read() {
        return jdbcTemplate.query("select * from invoice", BeanPropertyRowMapper.newInstance(Invoice.class));
    }

    @Override
    public Invoice findInvoiceById(int invoiceId) {
        return jdbcTemplate.queryForObject("SELECT * FROM invoice WHERE id=?", BeanPropertyRowMapper.newInstance(Invoice.class), invoiceId);
    }

    @Override
    public int update(Invoice invoice) {
        return jdbcTemplate.update("UPDATE customer SET ord_id=?, amount=?, issued=?, due=? WHERE id=?", invoice.getOrd_id(), invoice.getAmount(), invoice.getIssued(), invoice.getDue());

    }

    @Override
    public int delete(int invoiceId) {
        return jdbcTemplate.update("DELETE FROM invoice WHERE id=?", invoiceId);
    }
}
