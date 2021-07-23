
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
	
	//��й�ȣ ���� put
	@PutMapping("/changepassword")
	public ResponseEntity<String> changePassword(@RequestBody changeMemberInfoVO vo,HttpSession sessoin) {
		log.info("changepassword REST ����"+vo);
		
		if(vo.newPasswordEqualsConfirmPassword()) { // ���� ��й�ȣ�� Ȯ�� �����й�ȣ�� ����
			if(service.updatePsw(vo)) { //��й�ȣ ���� ������
				sessoin.invalidate();
				return new ResponseEntity<String>("passwordsuccess",HttpStatus.OK);		
			}else { //��й�ȣ ���� ���н�
				return new ResponseEntity<String>("passwordfail",HttpStatus.BAD_REQUEST);
			}
		}else {//���� ��й�ȣ�� Ȯ�������й�ȣ�� �ٸ����
			return new ResponseEntity<String>("not-equal",HttpStatus.BAD_REQUEST);
		}				
	}
	//�̸��� ���� put
	@PutMapping("/changeemail")
	public ResponseEntity<String> changeEmail(@RequestBody changeMemberInfoVO vo,HttpSession sessoin) {
		log.info("changeemail REST ����"+vo);
		
		service.updateEmail(vo.getUserid(), vo.getNew_email());
		sessoin.invalidate();
		return new ResponseEntity<String>("emailsuccess",HttpStatus.OK);				
	}
	//����� ���� put
	@PutMapping("/changemobile")
	public ResponseEntity<String> changeMobile(@RequestBody changeMemberInfoVO vo,HttpSession sessoin) {
		log.info("changemobile REST ����"+vo);
		
		service.updateMobile(vo.getUserid(), vo.getNew_mobile());
		sessoin.invalidate();
		return new ResponseEntity<String>("mobilesuccess",HttpStatus.OK);		
	}
	
	// ȸ�� Ż�� delete
	@DeleteMapping("/memberleave")
	public ResponseEntity<String> memberLeave(@RequestBody changeMemberInfoVO vo, HttpSession session) {
		log.info("memberleave ȸ�� Ż�� ��û ..."+vo);
		
		service.leave(vo.getUserid());
		session.invalidate();
		return new ResponseEntity<String>("leavesuccess",HttpStatus.OK);		
	}
}
