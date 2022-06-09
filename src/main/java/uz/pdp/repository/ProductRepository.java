package uz.pdp.repository;

import uz.pdp.entity.Product;

import java.util.List;

public interface ProductRepository {
public int create (Product product);

public List<Product> read();

public Product findProductById (int productId);

public int update (Product product);

public int delete (int productId);

}
