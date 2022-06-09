package uz.pdp.entity;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Customer {
    private Integer id;
    private String name;
    private String country;
    private String address;
    private String phone;
}
