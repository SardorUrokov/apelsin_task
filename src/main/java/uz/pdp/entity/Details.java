package uz.pdp.entity;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Details {
    private Integer id;
    private Integer ord_id;
    private Integer pr_id;
    private String quantity; //chunki miqdor kg,L,ml, ящик да olchanishi mumkun o'shanga String
}
