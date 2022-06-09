package uz.pdp.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class Product {
    private Integer id;
    private String name;
    private Integer category_id;
    private String description;
    private Integer price;
    private String photo;
}
