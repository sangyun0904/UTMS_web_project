package com.spring.portfolio.market.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class ProductDto {
	private int    productId;
	private String productName;
	private String productSeller;
	private int    productPrice;
	private String productSort;
	private String productDesc;
	private String productImages;
	private Date   productCredate;
	
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductSeller() {
		return productSeller;
	}
	public void setProductSeller(String productSeller) {
		this.productSeller = productSeller;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductSort() {
		return productSort;
	}
	public void setProductSort(String productSort) {
		this.productSort = productSort;
	}
	public String getProductDesc() {
		return productDesc;
	}
	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
	}
	public String getProductImages() {
		return productImages;
	}
	public void setProductImages(String productImages) {
		this.productImages = productImages;
	}
	public Date getProductCredate() {
		return productCredate;
	}
	public void setProductCredate(Date productCredate) {
		this.productCredate = productCredate;
	}
	
	@Override
	public String toString() {
		return "ProductDto [productId=" + productId + ", productName=" + productName + ", productSeller="
				+ productSeller + ", productPrice=" + productPrice + ", productSort=" + productSort + ", productDesc="
				+ productDesc + ", productImages=" + productImages + ", productCredate=" + productCredate + "]";
	}

}