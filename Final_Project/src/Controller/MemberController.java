package Controller;

import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import Service.Member_Service;
import VO.MemberVO;

@Controller
public class MemberController {

	@Autowired
	private Member_Service memberSvc;
		
	//회원가입페이지 요청
	@RequestMapping("joinform.do")
	public String showJoinForm(){
		return "Member/joinForm2";
	}
	
	//아이디 중복 검사 페이지 요청 
	@RequestMapping("idChkForm.do")
	public String duplChkForm(){
		return "Member/Id_chk";
	}
	
	//로그인 페이지 요청
	@RequestMapping("loginform.do")
	public String showLoinForm() {
		return "Member/LoginForm";
	}
	
	//회원 가입 요청
	@RequestMapping("join.do")
	public String joinMember(MemberVO member){
		if(member.getM_PRIVATE()=='\0'){
			member.setM_PRIVATE('N');
		}
	
		 memberSvc.join(member);
		return "redirect:main.do";
	};
	
	@RequestMapping("duplChk.do")	//중복여부 체크요청
	public ModelAndView dupl(String m_id){
		ModelAndView mav = new ModelAndView();
		MemberVO mv = new MemberVO(m_id);
	
				if(memberSvc.selectOneMember(mv)==null){
					mav.addObject("msg", "사용 가능한 아이디 입니다.");
					mav.addObject("m_id", m_id);
					mav.addObject("flag", "true");
				}else {
					mav.addObject("msg", "이미 존재하는 아이디입니다.");
					mav.addObject("flag", "false");
				}
			
		mav.setViewName("Member/Id_chk");
		return mav;
	}
	
	
	@RequestMapping("login.do") //2: 아이디 없음 1:정상 3:비번틀림 100:관리자
	public ModelAndView tryLogin(HttpSession session,String m_id,String m_password) {
		ModelAndView mav = new ModelAndView();
		MemberVO mv=new MemberVO(m_id,m_password);
		int result = memberSvc.checkPw(mv);
		switch(result){
		case 1:{
			session.setAttribute("id", m_id);
			mav.addObject("flag", "1");
			break;
		}
		case 2:{
			mav.addObject("msg", "존재하지 않는 아이디 입니다.");
			mav.addObject("flag", "2");
			break;
		}
		case 3:{
			mav.addObject("msg", "비밀번호가 일치하지 않습니다.");
			mav.addObject("flag", "3");
			break;
		}}
		mav.setViewName("Member/LoginForm");			
		return mav;
	}
	
	
	@RequestMapping("logout.do")
	public String tryLogout(HttpSession session,String id) {
		session.removeAttribute("id");
		return "redirect:main.do";
	}
	}

	
