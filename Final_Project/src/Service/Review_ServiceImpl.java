package Service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import Dao.ReviewDao;
import VO.MemberVO;
import VO.ReviewVO;

@Service
public class Review_ServiceImpl implements Review_Service{
	
	@Autowired
	private ReviewDao RDao;
	
	@Override
	public int writeReview(ReviewVO review,MultipartFile file) {
		String path = "C:/koitt/down";
		File dir = new File(path);
		if(!dir.exists())
			dir.mkdirs();
		
		String fileName = file.getOriginalFilename();
		File attachFile = new File(path + fileName);
		
		try{
			file.transferTo(attachFile);
			review.setREV_FILE(fileName);
		}
		catch (IllegalStateException | IOException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		RDao.insertReview(review);
		return RDao.revseqcheck()-1;
		
		
	}

	@Override
	public int deleteReview(ReviewVO review) {
		return RDao.deleteReview(review);
	}

	@Override
	public int updateReview(ReviewVO review) {
		return RDao.updateReview(review);
	}

	@Override
	public ReviewVO selectReview(ReviewVO review) {
		// TODO Auto-generated method stub
		return RDao.selectOneReview(review);
		
	}

	@Override
	public int ReadCount(ReviewVO review) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public HashMap<String, Object> getReviewList(HashMap<String, Object> params, int page) {
		// TODO Auto-generated method stub
		params.put("current", page);
		params.put("START", ((page-1)/10*10+1));
		params.put("END", ((page/10+1)*10));
		params.put("STARTRN",page*10-9);
		params.put("ENDRN",page*10);
		System.out.println(RDao.getReviewList(params));
		params.put("reviewList", RDao.getReviewList(params));
		params.put("SKIP", ((page-1)*10));
		params.put("LAST",getLastPage(params));
		return params;
	}

	@Override
	public int recommendReview(ReviewVO review, MemberVO member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int unrecommendReview(ReviewVO review, MemberVO member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getLastPage(HashMap<String, Object> params) {
		// TODO Auto-generated method stub
		return (RDao.getReviewCount(params)-1)/10+1;
	}

	
	
	
	
	
	
}
