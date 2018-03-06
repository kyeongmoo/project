package Controller;

import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import Service.Review_Service;
import VO.ReviewVO;

@Controller
public class Menu2_Controller {
	@Autowired
	Review_Service revService;
	
	@RequestMapping("review_Main.do")
	public ModelAndView review_Main(
			@RequestParam(defaultValue="0") int type, // 0일떄 >>전체검색, 1제목 2내용 3제목+내용4작성자
			@RequestParam(defaultValue="1") int page,
			@RequestParam(required=false) String keyword,
			@RequestParam(required=false) Date startdate,
			@RequestParam(required=false) Date enddate){
		ModelAndView mav = new ModelAndView();
		HashMap<String,Object> params=new HashMap<>();
		if(type==1||type==3){
			params.put("REV_TITLE",keyword);
		}if(type==2||type==3){
			params.put("REV_CONTENT",keyword);
		}
		if(type==4){
			params.put("M_ID",keyword);
		}
		
		if(startdate!=null&&enddate!=null){
			params.put("startdate", startdate);
			params.put("enddate", enddate);			
		}
		
		mav.addObject(revService.getReviewList(params, page));
		mav.setViewName("Review/Review_Main");
		return mav;
	}
	
	@RequestMapping("review_WriteForm.do")
	public ModelAndView review_WriteForm(HttpSession session){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Review/Review_WriteForm");
		
		//세션에 아이디 확인해서 분개해서 보내
		return mav;
	}
	@RequestMapping("review_Write.do")
	public String review_Write(ReviewVO reviewVO,@RequestParam("ufile") MultipartFile ufile){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Review/Review_WriteForm");
		int num=revService.writeReview(reviewVO, ufile);
		//세션에 아이디 확인해서 분개해서 보내
		return "redirect:review_view.do?num="+num;
	}
	
	@RequestMapping("review_view.do")
	public ModelAndView review_view(int num){
		ReviewVO review = new ReviewVO(num);
		ModelAndView mav = new ModelAndView();
		mav.addObject("review",revService.selectReview(review));
		mav.setViewName("Review/Review_View");
		return mav;		
	}
	
	
	
}
