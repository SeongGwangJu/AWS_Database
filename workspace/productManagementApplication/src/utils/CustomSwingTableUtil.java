package utils;

import java.util.List;

import entity.Product;

public class CustomSwingTableUtil {

	public static String[][] searchProductListToArray(List<Product> searchProductList) {
			if(searchProductList == null) {
				return null;
			}
			String[][] searchProductModelArray = new String[searchProductList.size()][7];
			
			for(int i = 0; i < searchProductList.size(); i++) {
				searchProductModelArray[i][0] = Integer.toString(searchProductList.get(i).getProduct_Id());
				searchProductModelArray[i][1] = searchProductList.get(i).getProduct_Name();
				searchProductModelArray[i][2] = Integer.toString(searchProductList.get(i).getProduct_Price());
				searchProductModelArray[i][3] = Integer.toString(searchProductList.get(i).getColor_Id());
				searchProductModelArray[i][4] = searchProductList.get(i).getProductColor().getColor_Name();
				searchProductModelArray[i][5] = Integer.toString(searchProductList.get(i).getCategory_Id());
				searchProductModelArray[i][6] = searchProductList.get(i).getProductCategory().getCategory_Name();
				
			}
			
			return searchProductModelArray;
		
	}
}
