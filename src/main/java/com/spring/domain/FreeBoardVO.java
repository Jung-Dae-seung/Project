package com.spring.domain;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class FreeBoardVO {
	private int bno;
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	private Date updatedate;
	private int replycnt;
	
	//÷������ ����Ʈ
	private List<FreeAttachFileDTO> attachList;
}
