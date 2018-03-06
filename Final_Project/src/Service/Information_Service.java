package Service;

import java.util.ArrayList;

import VO.InformationVO;
import VO.MemberVO;

public interface Information_Service {
	//여행정보 게시판 내부의 기능 // 글쓰기, 수정, 삭제,조회,전체검색,한가지 게시물 뱉기 추천 등등

	//게시물쓰기
	public int writeInformation(InformationVO information);

	//게시물 지우기
	public int deleteInformation(InformationVO information);
	
	//게시물 수정
	public int updateInformation(InformationVO information);
	
	//한가지 조회
	public int selectInformation(InformationVO information);
	
	//조회수 증가
	public int ReadCount(InformationVO information);
			
	//게시물 뿌려주기
	public ArrayList<InformationVO> getInfomationList(int page);
	
	//게시물 추천
	public int recommendInfomation(InformationVO information,MemberVO member);
	
	//게시물 비추천
	public int unrecommendInfomation(InformationVO information, MemberVO member);
	
}
