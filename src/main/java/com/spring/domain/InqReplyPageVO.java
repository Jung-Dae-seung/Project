package com.spring.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@Getter
@Setter
@ToString
@AllArgsConstructor
public class InqReplyPageVO {

	private int replyCnt; //´ñ±Û ÀüÃ¼ °¹¼ö
	private List<InqReplyVO> list;
}
