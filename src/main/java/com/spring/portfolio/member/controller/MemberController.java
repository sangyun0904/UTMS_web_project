package com.spring.portfolio.member.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.portfolio.member.dto.MemberDto;
import com.spring.portfolio.member.service.MemberService;


@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/loginForm" , method=RequestMethod.GET)
	public ModelAndView login() throws Exception {
		return new ModelAndView("/member/loginForm");
	}
	
	@RequestMapping(value="/login" , method=RequestMethod.POST)
	public ModelAndView login(@RequestParam Map<String, String> loginMap, HttpServletRequest request) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		
		MemberDto memberDto = memberService.login(loginMap);
		
		if (memberDto != null) {
			HttpSession session = request.getSession();
			session.setAttribute("isLogOn", true);
			session.setAttribute("memberInfo", memberDto.getMemberId());
			mv.setViewName("/portfolio/");
		}
		
		return mv;
		
	}

	@RequestMapping(value="/memberForm", method=RequestMethod.GET)
	public ModelAndView memberForm() throws Exception {
		return new ModelAndView("/member/memberForm");
	}
	
	@RequestMapping(value="/memberForm" , method = RequestMethod.POST)
	public ResponseEntity<String> memberForm(MemberDto memberDto , HttpServletRequest request) throws Exception {
		
		if (memberDto.getEmailstsYn() == null)  memberDto.setEmailstsYn("N");
		if (memberDto.getSmsstsYn() == null)    memberDto.setSmsstsYn("N");
		
		memberService.addMember(memberDto);

		String message  = "<script>";
			   message += " alert('회원가입되었습니다.');";
			   message += " location.href='/portfolio/memberForm';";
			   message += " </script>";
	    
	    HttpHeaders responseHeaders = new HttpHeaders();
	    responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		
		return new ResponseEntity<String>(message, responseHeaders, HttpStatus.OK);
		
	}
	
}
