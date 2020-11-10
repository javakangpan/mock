package mock.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.Date;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Coffee {
    private long id;
    private String name;
    private int state;
    private double price;
    private String coffeeDesc;
    private String stateDes;
    private Date createTime;
    private Date updateTime;
    private String createdBy;
    private String updatedBy;
}
