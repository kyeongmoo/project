package Service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.web.multipart.MultipartFile;


import VO.MemberVO;
import VO.ReviewVO;
public interface Review_Service {
	//리뷰게시판 내부의 기능 // 글쓰기, 수정, 삭제,조회,전체검색,한가지 게시물 뱉기, 추천 등등
	//게시물쓰기
	public int writeReview(ReviewVO review, MultipartFile file);

	//게시물 지우기
	public int deleteReview(ReviewVO review);
	
	//게시물 수정
	public int updateReview(ReviewVO review);
	
	//한가지 조회
	public ReviewVO selectReview(ReviewVO review);
	
	//조회수 증가
	public int ReadCount(ReviewVO review);
		
	//게시물 뿌려주기
	public HashMap<String, Object> getReviewList(HashMap<String,Object> params,int page);
	
	//게시물 추천
	public int recommendReview(ReviewVO review, MemberVO member);
	
	//게시물 비추천
	public int unrecommendReview(ReviewVO review,MemberVO member);

	//마지막 페이지 ? 확인할꺼 ... 글수에 따라서
	public int getLastPage(HashMap<String, Object> params);

	
}
