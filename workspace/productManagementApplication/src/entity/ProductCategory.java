package entity;
import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class ProductCategory {
	private int category_Id;
	String category_Name; 
}
