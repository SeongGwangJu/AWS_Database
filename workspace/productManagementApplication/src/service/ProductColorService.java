package service;

import java.util.ArrayList;
import java.util.List;

import entity.ProductColor;
import repository.ProductColorRepository;

public class ProductColorService {
	
	private ProductColorRepository productColorRepository;
	
	//싱글톤으로 만듬
	private static ProductColorService instance;
	
	private ProductColorService() {
		productColorRepository = ProductColorRepository.getInstance();
		
	}
	
	public static ProductColorService getInstance() {
		if(instance == null) {
			instance = new ProductColorService();
		}
		return instance;
	}
	
//=============
	
	public List<String> getProductColorNameList() {
		List<String> productColorNameList = new ArrayList<>();
		
		productColorRepository.getProductColorListAll().forEach(productColor ->{ //왜 널이냐?
			productColorNameList.add(productColor.getColor_Name());
		});
		
		return productColorNameList;
	}
	
	//중복이 되면 true 
	public boolean isProductColorNameDuplicated(String productColorName) {
		boolean result = false;
		//조회되는 값이 있으면 true 없으면 false
		result = productColorRepository.findProductColorByProductColorName(productColorName) != null ; 

		return result;
		
	}
	
	public boolean registerProductColor(ProductColor productColor) {
		
		boolean result = false;
		//정상적으로 등록이 되었다면 0보다 크다. ??
		result = productColorRepository.saveProductColor(productColor) > 0;
		
		return result;
		
	}
}
