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
public class FreeReplyPageVO {
	private int replyCnt; //��� ��ü ����
	private List<FreeReplyVO> list;
}
