package entity;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class ProductColor {
	private int color_Id;
	private String color_Name;
}
