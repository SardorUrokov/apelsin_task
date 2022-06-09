package uz.pdp.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import uz.pdp.repository.*;

@Configuration
@ComponentScan()
@EnableWebMvc
public class WebMvcConfig implements WebMvcConfigurer {

    @Bean
    InternalResourceViewResolver viewResolver() {
        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setPrefix("/WEB-INF/views/");
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }

    @Bean
    DriverManagerDataSource getDataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("org.postgresql.Driver");
        dataSource.setUrl("jdbc:postgresql://localhost:5432/apelsin_team");
        dataSource.setUsername("postgres");
        dataSource.setPassword("root123");
        return dataSource;
    }

    @Bean
    public CategoryRepository getCategoryDAO() {
        return new CategoryRepositoryImpl(getDataSource());
    }

    @Bean
    public CustomerRepository getCustomerDAO() {
        return new CustomerRepositoryImpl(getDataSource());
    }

    @Bean
    public DetailsRepository getDetailsDAO() {
        return new DetailsRepositoryImpl(getDataSource());
    }

    @Bean
    public InvoiceRepository getInvoiceDAO() {
        return new InvoiceRepositoryImpl(getDataSource());
    }

    @Bean
    public OrderRepository getOrdersDAO() {
        return new OrderRepositoryImpl(getDataSource());
    }

    @Bean
    public PaymentRepository getPaymentDAO() {
        return new PaymentRepositoryImpl(getDataSource());
    }

    @Bean
    public ProductRepository getProductDAO() {
        return new ProductRepositoryImpl(getDataSource());
    }
}


