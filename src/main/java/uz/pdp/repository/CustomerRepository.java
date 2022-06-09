package uz.pdp.repository;

import uz.pdp.entity.Customer;

import java.util.List;

public interface CustomerRepository {
    public int create (Customer customer);

    public List<Customer> read();

    public Customer findCustomerById (int customerId);

    public int update (Customer customer);

    public int delete (int customerId);
}
