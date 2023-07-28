package service;

import java.util.ArrayList;
import java.util.List;

import entity.ProductCategory;
import entity.ProductCategory;
import repository.ProductCategoryRepository;

public class ProductCategoryService {
	
	private ProductCategoryRepository productCategoryRepository;
	
	//싱글톤으로 만듬
	private static ProductCategoryService instance;
	
	private ProductCategoryService() {
		productCategoryRepository = ProductCategoryRepository.getInstance();
		
	}
	
	public static ProductCategoryService getInstance() {
		if(instance == null) {
			instance = new ProductCategoryService();
		}
		return instance;
	}
	
//=============
	
	// Jcombobox 표시를 위한 리스트
	public List<String> getProductCategoryNameList() {
		List<String> productCategoryNameList = new ArrayList<>();
		
		productCategoryRepository.getProductCategoryListAll().forEach(productCategory -> {
			productCategoryNameList.add(productCategory.getCategory_Name());
		});
		
		return productCategoryNameList;
	}
	
	//중복확인 : 중복이 되면 true.
	public boolean isProductCategoryNameDuplicated(String productCategoryName) {
		boolean result = false;
		//값이 있으면 true 없으면 false
		result = productCategoryRepository.findProductCategoryByProductCategoryName(productCategoryName) != null ; 
		
		return result;
		
	}
	
	//
	public boolean registerProductCategory(ProductCategory productCategory) {
		boolean result = false;
		//정상적으로 등록이 되었다면 0보다 크다. 성공하면 successCount가 올라가니까
		result = productCategoryRepository.saveProductCategory(productCategory) > 0;
		return result;
		
	}
}
