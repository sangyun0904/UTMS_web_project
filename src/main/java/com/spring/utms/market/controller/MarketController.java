package com.spring.utms.market.controller;

import java.io.File;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.spring.utms.market.dto.ProductDto;
import com.spring.utms.market.service.MarketService;

import net.coobird.thumbnailator.Thumbnails;

@Controller
public class MarketController {
	
	private static final String CURR_IMAGE_REPO_PATH = "C:\\file_repo";
	String seperatorPath = "\\";	// window

	//private static final String CURR_IMAGE_REPO_PATH = "/var/lib/tomcat8/file_repo";
	//String seperatorPath = "/";		// linux
	
	@Autowired
	private MarketService marketService;
	
	@RequestMapping(value="/productList" , method=RequestMethod.GET)
	public ModelAndView productList() throws Exception {
		
		List<ProductDto> productList = marketService.getProductList();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/market/marketMain");
		mv.addObject("productList", productList);
		
		return mv;
	}
	
	@RequestMapping(value="/productInfo" , method=RequestMethod.GET)
	public ModelAndView productInfo(int num) throws Exception {
		
		ProductDto productDto = marketService.getOneProduct(num);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/market/productInfo");
		mv.addObject("productDto", productDto);
		
		return mv;
	}
	
	@RequestMapping(value="/uploadProduct", method=RequestMethod.GET)
	public ModelAndView uploadForm() throws Exception {
		return new ModelAndView("/market/newProduct");
	}

	@RequestMapping(value="/upload", method=RequestMethod.GET)
	public ModelAndView upload() throws Exception {
		return new ModelAndView("/market/uploadProduct");
	}
	
	@RequestMapping(value="/uploadProduct" , method=RequestMethod.POST)
	public ResponseEntity<String> uploadProduct(MultipartHttpServletRequest multipartRequest, HttpServletResponse response) throws Exception {

		multipartRequest.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		HttpSession session = multipartRequest.getSession();
		ProductDto productDto = new ProductDto();
		productDto.setProductName(multipartRequest.getParameter("productName"));
		int productPrice = Integer.parseInt(multipartRequest.getParameter("productPrice"));
		productDto.setProductPrice(productPrice);
		productDto.setProductDesc(multipartRequest.getParameter("productDesc"));
		productDto.setProductSort(multipartRequest.getParameter("productSort"));
		productDto.setProductSeller((String)session.getAttribute("memberInfo"));
		
		Iterator<String> file = multipartRequest.getFileNames();
		if (file.hasNext()) {
			
			MultipartFile uploadFile = multipartRequest.getFile(file.next()); 	
			
			if(!uploadFile.getOriginalFilename().isEmpty()) {
			
				String fileName = UUID.randomUUID() + "_" + uploadFile.getOriginalFilename();
				
				File f = new File(CURR_IMAGE_REPO_PATH + seperatorPath + fileName);	
				uploadFile.transferTo(f); 
				productDto.setProductImages(fileName);
			}
		
		}
		
		System.out.println(productDto);
		marketService.addProduct(productDto);
		
		String message  = "<script>";
			   message += " alert('상품이 등록되었습니다.');";
			   message += " location.href='/utms/productList';";
			   message += " </script>";
			   
	    HttpHeaders responseHeaders = new HttpHeaders();
	    responseHeaders.add("Content-Type", "text/html; charset=utf-8");
			   
		return new ResponseEntity<String>(message, responseHeaders, HttpStatus.OK);
		
	}
	
	@RequestMapping("/thumbnails")
	public void thumbnails(@RequestParam("goodsFileName") String goodsFileName , HttpServletResponse response) throws Exception {
	
		OutputStream out = response.getOutputStream();
		String filePath = CURR_IMAGE_REPO_PATH + seperatorPath + goodsFileName;
		
		File image = new File(filePath);
		if (image.exists()) { 
			Thumbnails.of(image).size(121,154).outputFormat("png").toOutputStream(out);
		}
		byte[] buffer = new byte[1024 * 8];
		out.write(buffer);
		out.close();
		
	}

}
