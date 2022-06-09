package uz.pdp.repository;

import uz.pdp.entity.Details;

import java.util.List;

public interface DetailRepository {
    public int create (Details detail);

    public List<Details> read();

    public Details findDetailById (int detailId);

    public int update (Details detail);

    public int delete (int detailId);
}
