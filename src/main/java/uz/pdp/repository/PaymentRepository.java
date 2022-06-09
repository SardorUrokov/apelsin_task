package uz.pdp.repository;
import uz.pdp.entity.Payment;

import java.util.List;

public interface PaymentRepository {
    public int create (Payment payment);

    public List<Payment> read();

    public Payment findPaymentById (int paymentId);

    public int update (Payment payment);

    public int delete (int paymentId);
}
