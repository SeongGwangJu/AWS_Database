package service;

import entity.Product;
import repository.ProductRepository;

public class ProductService {

	private ProductRepository productRepository;
	private static ProductService instance;

	private ProductService() {
		productRepository = ProductRepository.getInstance();
	}
	
	public static ProductService getInstance() {
		if(instance ==null) {
			instance = new ProductService();
		}
		return instance;
	}
	
//============================
	

	public boolean isProductNameDuplicated(String productName) {
		boolean result = false;
		//조회되는 값이 있으면(=!null) true, 없으면 false
		result = productRepository.findProductNameByProductName(productName) != null;
		
		return result;
		
	}
	//
	public boolean registerProduct(Product product) {
		
		return productRepository.saveProduct(product) > 0;
		
	}
	

	
}
