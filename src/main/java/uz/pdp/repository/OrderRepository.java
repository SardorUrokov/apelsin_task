package uz.pdp.repository;
import uz.pdp.entity.Orders;

import java.util.List;

public interface OrderRepository {
    public int create (Orders order);

    public List<Orders> read();

    public Orders findOrderById (int orderId);

    public int update (Orders order);

    public int delete (int orderId);
}
