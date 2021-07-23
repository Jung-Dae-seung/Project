
package com.spring.controller;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.spring.domain.changeMemberInfoVO;
import com.spring.service.MemberService;

import lombok.extern.log4j.Log4j2;


@RestController
@Log4j2
public class MemberRestController {
	
	@Autowired
	private MemberService service;
	
	//비밀번호 변경 put
	@PutMapping("/changepassword")
	public ResponseEntity<String> changePassword(@RequestBody changeMemberInfoVO vo,HttpSession sessoin) {
		log.info("changepassword REST 수정"+vo);
		
		if(vo.newPasswordEqualsConfirmPassword()) { // 변경 비밀번호와 확정 변경비밀번호가 같음
			if(service.updatePsw(vo)) { //비밀번호 변경 성공시
				sessoin.invalidate();
				return new ResponseEntity<String>("passwordsuccess",HttpStatus.OK);		
			}else { //비밀번호 변경 실패시
				return new ResponseEntity<String>("passwordfail",HttpStatus.BAD_REQUEST);
			}
		}else {//변경 비밀번호와 확정변경비밀번호가 다른경우
			return new ResponseEntity<String>("not-equal",HttpStatus.BAD_REQUEST);
		}				
	}
	//이메일 변경 put
	@PutMapping("/changeemail")
	public ResponseEntity<String> changeEmail(@RequestBody changeMemberInfoVO vo,HttpSession sessoin) {
		log.info("changeemail REST 수정"+vo);
		
		service.updateEmail(vo.getUserid(), vo.getNew_email());
		sessoin.invalidate();
		return new ResponseEntity<String>("emailsuccess",HttpStatus.OK);				
	}
	//모바일 변경 put
	@PutMapping("/changemobile")
	public ResponseEntity<String> changeMobile(@RequestBody changeMemberInfoVO vo,HttpSession sessoin) {
		log.info("changemobile REST 수정"+vo);
		
		service.updateMobile(vo.getUserid(), vo.getNew_mobile());
		sessoin.invalidate();
		return new ResponseEntity<String>("mobilesuccess",HttpStatus.OK);		
	}
	
	// 회원 탈퇴 delete
	@DeleteMapping("/memberleave")
	public ResponseEntity<String> memberLeave(@RequestBody changeMemberInfoVO vo, HttpSession session) {
		log.info("memberleave 회원 탈퇴 요청 ..."+vo);
		
		service.leave(vo.getUserid());
		session.invalidate();
		return new ResponseEntity<String>("leavesuccess",HttpStatus.OK);		
	}
}
