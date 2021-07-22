
--��� ���̺�
create table memberTBL(userid varchar2(15) constraint memberTBL_pk primary key,
						password varchar2(100) not null,
						name varchar2(20) not null,
						gender varchar2(10) not null,
                        age number(5) not null,
                        mobile varchar2(15) not null,
						email varchar2(50));

-- ���� ���̺�    
create table reviewTBL(reviewer varchar2(15) not null,
                        bno number(10,0) constraint reviewTBL_pk primary key,
                        review varchar2(2000),
                        star number(5) not null,
                        reveiwdate date default sysdate,
                        updatedate date default sysdate,
                        restaurent varchar2(100) not null);
                        
-- �������̺� ������
create sequence seq_review;

                
-- �����Խ��� ���̺�
create table freeBoardTBL(bno number(10,0) constraint freeBoardTBL_pk primary key,
                      title varchar2(200) not null,
                      content varchar2(2000) not null,
                      writer varchar2(50) not null,
                      regdate date default sysdate,
                      updatedate date default sysdate,
                      REPLYCNT number);
                      
-- �����Խ��� ������
create sequence seq_freeBoard;
                      
-- ȫ���Խ��� ���̺�
create table proBoardTBL(bno number(10,0) constraint proBoardTBL_pk primary key,
                      title varchar2(200) not null,
                      content varchar2(2000) not null,
                      writer varchar2(50) not null,
                      regdate date default sysdate,
                      updatedate date default sysdate,
                      REPLYCNT number);

-- ȫ���Խ��� ������
create sequence seq_proBoard;

-- ���ǰԽ��� ���̺� 
create table inqBoardTBL(bno number(10,0) constraint inqBoardTBL_pk primary key,
                      title varchar2(200) not null,
                      content varchar2(2000) not null,
                      writer varchar2(50) not null,
                      regdate date default sysdate,
                      updatedate date default sysdate,
                      REPLYCNT number);
                      
-- ���ǰԽ��� ������
create sequence seq_inqBoard;

-- �����Խ��� ��� ���̺�           
create table freeReplyTBL(rno number(10,0) constraint pk_freereply primary key, --��� �۹�ȣ
						  bno number(10,0) not null, --���� �۹�ȣ
						  reply varchar2(1000) not null, --��� ����
						  replyer varchar2(50) not null, --��� �ۼ���
						  replydate date default sysdate,
						  updatedate date default sysdate,
						  constraint fk_freeReplyTBL foreign key(bno) references freeBoardTBL(bno));

-- �����Խ��� ��� ������	  
create sequence seq_freeReply;

-- ȫ�� �Խ��� ��� ���̺�           
create table proReplyTBL(rno number(10,0) constraint pk_proreply primary key, --��� �۹�ȣ
						  bno number(10,0) not null, --���� �۹�ȣ
						  reply varchar2(1000) not null, --��� ����
						  replyer varchar2(50) not null, --��� �ۼ���
						  replydate date default sysdate,
						  updatedate date default sysdate,
						  constraint fk_proReplyTBL foreign key(bno) references proboardTBL(bno));

-- ȫ���Խ��� ��� ������	  
create sequence seq_proReply;

-- ���ǰԽ��� ��� ���̺�           
create table inqReplyTBL(rno number(10,0) constraint pk_inqreply primary key, --��� �۹�ȣ
						  bno number(10,0) not null, --���� �۹�ȣ
						  reply varchar2(1000) not null, --��� ����
						  replyer varchar2(50) not null, --��� �ۼ���
						  replydate date default sysdate,
						  updatedate date default sysdate,
						  constraint fk_inqReplyTBL foreign key(bno) references inqboardTBL(bno));

-- ���ǰԽ��� ��� ������	  
create sequence seq_inqReply;

-- ���� �Խ��� ����÷�� ���̺�
create table free_file_attach(uuid varchar2(100) not null,
                         uploadPath varchar2(200) not null,
                         fileName varchar2(100) not null,
                         fileType char(1) default 'I',
                         bno number(10,0));
     
alter table file_attach add constraint pk_attach primary key(uuid);
alter table file_attach add constraint fk_file_attach foreign key(bno) references freeboardTBL(bno);

-- ȫ�� �Խ��� ����÷�� ���̺�
create table pro_file_attach(uuid varchar2(100) not null,
                         uploadPath varchar2(200) not null,
                         fileName varchar2(100) not null,
                         fileType char(1) default 'I',
                         bno number(10,0));
     
alter table pro_file_attach add constraint pk_proattach primary key(uuid);
alter table pro_file_attach add constraint fk_file_attach foreign key(bno) references proboardTBL(bno);

-- ���� �Խ��� ����÷�� ���̺�
create table inq_file_attach(uuid varchar2(100) not null,
                         uploadPath varchar2(200) not null,
                         fileName varchar2(100) not null,
                         fileType char(1) default 'I',
                         bno number(10,0));
     
alter table inq_file_attach add constraint pk_inqattach primary key(uuid);
alter table inq_file_attach add constraint fk_inqfile_attach foreign key(bno) references inqboardTBL(bno);

-- ���� �Խ��� ����÷�� ���̺�
create table review_file_attach(uuid varchar2(100) not null,
                         uploadPath varchar2(200) not null,
                         fileName varchar2(100) not null,
                         fileType char(1) default 'I',
                         bno number(10,0));
     
alter table review_file_attach add constraint pk_reviewattach primary key(uuid);
alter table review_file_attach add constraint fk_reviewfile_attach foreign key(bno) references reviewTBL(bno);

drop table reviewTBL;
                         
-- ���� ���̺�
create table login_auth(userid varchar2(50) not null,
                        auth varchar2(50) not null,
                        constraint fk_member_auth foreign key(userid) references memberTBL(userid));
                        

