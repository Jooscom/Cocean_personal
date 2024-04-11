
package kr.co.cocean.mypage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.cocean.mypage.dto.LoginDTO;
import kr.co.cocean.mypage.service.LoginService;

@Controller
public class LoginController {

	Logger logger = org.slf4j.LoggerFactory.getLogger(getClass());

	@Autowired LoginService service;


	//접속
	@GetMapping(value="/")
	public String login(HttpServletRequest req, HttpSession session) {
		String url = req.getRequestURI();
		session.setAttribute("path", url);
		return "mypage/login";
	}

	//로그인

	@PostMapping(value="/logingo")
	public ModelAndView logingo(HttpSession session , @RequestParam String password, String userNum){
		logger.info("test");
		String page = "mypage/login";
		logger.info("userNum : "+userNum+" / password :"+password);
		ModelAndView mav = new ModelAndView();

		LoginDTO userInfo = service.login(userNum);
		boolean success= service.getPw(userNum,password);
		if(success) {//로그인 성공
			logger.info("userNum"+userNum);
			session.setAttribute("userInfo",userInfo);
			page = "redirect:/home";

		}else {// 로그인 실패시
			mav.addObject("msg","비밀번호를 잊어버린 경우 인사과로 문의 해주세요");
		}
		mav.setViewName(page);
		return mav;
	}


	/*
	@PostMapping(value="/logingo")
	public ModelAndView logingo(HttpSession session, @RequestParam String password, String userNum) {
	    logger.info("test");
	    String page = "mypage/login";
	    logger.info("userNum: " + userNum + " / password: " + password);
	    ModelAndView mav = new ModelAndView();

	    LoginDTO userInfo = service.login(userNum);

	    // 퇴사자 여부 확인
	    boolean isRetired = service.isRetired(userNum);

	    if (!isRetired) { // 퇴사자가 아닌 경우에만 로그인 시도
	        boolean success = service.getPw(userNum, password);

	        if (success) { // 로그인 성공
	            logger.info("userNum" + userNum);

	            session.setAttribute("userInfo", userInfo);
	            page = "redirect:/home";
	        } else { // 로그인 실패시
	            mav.addObject("msg", "비밀번호를 잊어버린 경우 인사과로 문의 해주세요");
	        }
	    } else {
	        mav.addObject("msg", "퇴사한 사용자입니다. 인사과로 문의 해주세요");
	    }

	    mav.setViewName(page);
	    return mav;
	}*/

	//로그아웃
	@GetMapping(value = "/mypage/logout")
	public String logout(HttpSession session, HttpServletRequest req, RedirectAttributes rAttr) {
	session.removeAttribute("userInfo");
	rAttr.addAttribute("msg", "로그아웃되었습니다");
	return "redirect:/";
	}





}
