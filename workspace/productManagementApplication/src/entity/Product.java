package entity;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class Product {
	private int product_Id;
	private String product_Name;
	private int product_Price;
	private int color_Id;
	private int category_Id;
	
	//객체(Product)안의 객체(ProductColor) 
	// : ProductColorRepository와 ProductRegisterFrame에서 어떻게 사용되는지 확인
	private ProductColor productColor; 
	private	ProductCategory productCategory;
	
	

}
