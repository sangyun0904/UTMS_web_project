package com.spring.utms.member.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.utms.member.dto.MemberDto;
import com.spring.utms.member.service.MemberService;


@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@RequestMapping(value="/loginForm" , method=RequestMethod.GET)
	public ModelAndView login() throws Exception {
		return new ModelAndView("/member/loginForm");
	}
	
	@RequestMapping(value="/login" , method=RequestMethod.POST)
	public @ResponseBody String login(@RequestParam Map<String, String> loginMap, HttpServletRequest request) throws Exception {
		
		String htmlBody = "";
		
		MemberDto memberDto = memberService.login(loginMap);
		
		if (memberDto != null) {
			HttpSession session = request.getSession();
			session.setAttribute("isLogOn", true);
			session.setAttribute("memberId", memberDto.getMemberId());
			session.setAttribute("memberName", memberDto.getMemberName());
			htmlBody += "<script>";
			htmlBody += "alert('Welcome " + memberDto.getMemberName() + "!');";
			htmlBody += "location.href='/productList'";
			htmlBody += "</script>";
		} 
		else {
			htmlBody += "<script>";
			htmlBody += "alert('check your Id or Password!');";
			htmlBody += "history.back(-1);";
			htmlBody += "</script>";
		}
		return htmlBody;
		
	}
	
	@RequestMapping(value="/logout" , method=RequestMethod.GET)
	public @ResponseBody String logout(HttpServletRequest request) throws Exception {
		
		String htmlBody = "";
		HttpSession session = request.getSession();
		
		session.setAttribute("isLogOn", false);
		session.invalidate(); 
		htmlBody += "<script>";
		htmlBody += "location.href='/productList'";
		htmlBody += "</script>";
		
		return htmlBody;
		
	}

	@RequestMapping(value="/memberForm", method=RequestMethod.GET)
	public ModelAndView memberForm() throws Exception {
		return new ModelAndView("/member/memberForm");
	}
	
	@RequestMapping(value="/memberForm" , method=RequestMethod.POST)
	public ResponseEntity<String> memberForm(MemberDto memberDto , HttpServletRequest request) throws Exception {
		
		if (memberDto.getEmailstsYn() == null)  memberDto.setEmailstsYn("N");
		if (memberDto.getSmsstsYn() == null)    memberDto.setSmsstsYn("N");
		
		memberDto.setMemberPw(passwordEncoder.encode(memberDto.getMemberPw()));
		
		memberService.addMember(memberDto);

		String message  = "<script>";
			   message += " alert('회원가입되었습니다.');";
			   message += " location.href='/loginForm';";
			   message += " </script>";
	    
	    HttpHeaders responseHeaders = new HttpHeaders();
	    responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		
		return new ResponseEntity<String>(message, responseHeaders, HttpStatus.OK);
		
	}
	
	@RequestMapping(value="/profile", method=RequestMethod.GET)
	public ModelAndView profile(HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		
		MemberDto memberDto = memberService.getMemberInfo((String)session.getAttribute("memberId"));
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/member/memberProfile");
		mv.addObject("memberDto", memberDto);
		
		return mv;
	}
	
}
