package day1201;

import java.util.ArrayList;
import java.util.List;

import day1127.DataDTO;

public class CollectionService {

	public String[]arr(){
		
		
		return "Java SE,Oracle DBMS,JDBC,HTML,JavaScript,CS,JSP".split(",");
	}//arr
	
	public List<String> list(){
		List<String> list=new ArrayList<String>();
		
		list.add("옥션");
		list.add("네이버");
		list.add("지마켓");
		list.add("쿠팡");
		list.add("11번가");
		return list;
	}//list
	
	public List<DataDTO> searchMember(){
		List<DataDTO> list=new ArrayList<DataDTO>();
		//DataDTO가 String 형
		list.add(new DataDTO("민병조",26));
		list.add(new DataDTO("남지우",28));
		list.add(new DataDTO("박현욱",29));
		list.add(new DataDTO("박제영",25));
		
		return list;
	}
	
}//class
