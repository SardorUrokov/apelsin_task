package uz.pdp.repository;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import uz.pdp.entity.Details;

import java.util.List;

public class DetailRepositoryImpl implements DetailRepository{
    JdbcTemplate jdbcTemplate;

    public DetailRepositoryImpl(DriverManagerDataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public int create(Details detail) {
        try {
            return jdbcTemplate.update("insert into detail(Id, ord_id, pr_id, quantity) values (?,?,?,?)", detail.getId(), detail.getOrd_id(), detail.getPr_id(), detail.getQuantity());

        } catch (Exception e) {
            return 0;
        }
    }

    @Override
    public List<Details> read() {
        return jdbcTemplate.query("select * from detail", BeanPropertyRowMapper.newInstance(Details.class));
    }

    @Override
    public Details findDetailById(int detailId) {
        return jdbcTemplate.queryForObject("SELECT * FROM detail WHERE id=?", BeanPropertyRowMapper.newInstance(Details.class), detailId);
    }

    @Override
    public int update(Details detail) {
        return jdbcTemplate.update("UPDATE detail SET ord_id=?, pr_id=?, quantity=? WHERE id=?", detail.getOrd_id(), detail.getPr_id(), detail.getQuantity());

    }

    @Override
    public int delete(int detailId) {
        return jdbcTemplate.update("DELETE FROM detail WHERE id=?", detailId);
    }
}
