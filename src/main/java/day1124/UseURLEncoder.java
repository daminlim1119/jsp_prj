package day1124;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

public class UseURLEncoder {

	public static void main(String[] args) throws UnsupportedEncodingException {

		String name="민병조";
		System.out.println(name);
		
		String enName=URLEncoder.encode(name,"UTF-8");
		System.out.println(enName);
		String deName=URLDecoder.decode(enName, "UTF-8");
		System.out.println(deName);
		
	}//main

}//class
