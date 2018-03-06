package Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import Service.Member_Service;
import VO.MemberVO;
import Controller.DownloadView;


@Controller
public class MainController {
 
//		@Autowired
//    	private MainService mainSvc;
		
		@Autowired
		private Member_Service memberSvc;
	
	
	@RequestMapping("main.do")
	public ModelAndView goMain(HttpSession session,String id){
		ModelAndView mav = new ModelAndView();
		MemberVO member= new MemberVO(id);
		if(id!=null){
			session.setAttribute("id",id);
			if(memberSvc.checkAdmin(member)==true){
				session.setAttribute("id", id);
				mav.addObject("admin", "Y");
			}else{
				session.setAttribute("id", id);
				mav.addObject("admin", "N");
				}
		}
		mav.setViewName("Main");
		return mav;
	}
	
	
	
	
	 
	
}
