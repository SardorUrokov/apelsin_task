package uz.pdp.repository;
import uz.pdp.entity.Invoice;


import java.util.List;

public interface InvoiceRepository {
    public int create (Invoice invoice);

    public List<Invoice> read();

    public Invoice findInvoiceById (int invoiceId);

    public int update (Invoice invoice);

    public int delete (int invoiceId);
}
