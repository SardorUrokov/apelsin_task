package uz.pdp.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder
public class Invoice {
    private Integer id;
    private Integer ord_id;
    private String amount;
    private String issued;
    private String due;
}
