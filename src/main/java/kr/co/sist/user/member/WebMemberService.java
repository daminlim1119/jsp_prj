package kr.co.sist.user.member;

import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

import day1128.ParamDTO;
import kr.co.sist.chipher.DataEncryption;

public class WebMemberService {

	private static WebMemberService wmService;
	
	private WebMemberService() {
		
	}
	
	public static WebMemberService getInstance() {
		if(wmService==null) {
			wmService=new WebMemberService();
		}//end if
		return wmService;
	}
	
	public boolean searchId(String id) {
		boolean flag=false;
		
		WebMemberDAO wmDAO=WebMemberDAO.getInstance();
		try {
			flag=wmDAO.selectId(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return flag;
	}//searchId
	
	public boolean addMember(ParamDTO pDTO,String key) {
		boolean flag=false;
		
		WebMemberDAO wmDAO=WebMemberDAO.getInstance();
		
		//저장될 데이터의 중요도에 따라 일방향 해시, 암호화 처리
		//null이나 ""는 일방향해시,암호화를 하면 error 발생
		
		key="a123456789012345";//16글자
		DataEncryption de=new DataEncryption(key);
		if(pDTO.getName()!=null && !"".equals(pDTO.getName())) {
			try {
				pDTO.setName(de.encrypt(pDTO.getName()) );
			} catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}//end if
		
		if(pDTO.getPass()!=null && !"".equals(pDTO.getPass())) {
			try {
				pDTO.setPass(DataEncryption.messageDigest("SHA-1", pDTO.getPass()));
			} catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
			}
		}//end if
		
		//회원 정보 1개
			//회원 정보 1개
			try {
				wmDAO.insertMember(pDTO);
				flag=true;
				//회원정보 n개
				String[]lang=pDTO.getLanguage();
				if(lang !=null) {//선택한 언어가 있다면
					for(String tempLang:lang) {
						wmDAO.insertMemberLang(pDTO.getId(), tempLang);
					}//end for
				}//end if
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}//end catch
			
			return flag;
			
	}//addMember
	
}
