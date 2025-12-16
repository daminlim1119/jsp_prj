package day1201;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ProductService {
	
	public List<ProductDTO> searchPrd(){
		List<ProductDTO> list=new ArrayList<ProductDTO>();
		
		list.add(new ProductDTO("img_4.jpg","뭐지","햄스터",3500,new Date()));
		list.add(new ProductDTO("img_4.jpg","음","햄스터아님",23500,new Date()));
		list.add(new ProductDTO("img_4.jpg","아니","넌 아냐",500,new Date()));
		
		return list;
	}

}
