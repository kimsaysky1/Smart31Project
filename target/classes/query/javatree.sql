
/* Drop Tables */

DROP TABLE ability CASCADE CONSTRAINTS;
DROP TABLE checklecture CASCADE CONSTRAINTS;
DROP TABLE rereply CASCADE CONSTRAINTS;
DROP TABLE reply CASCADE CONSTRAINTS;
DROP TABLE question CASCADE CONSTRAINTS;
DROP TABLE studycodingbox CASCADE CONSTRAINTS;
DROP TABLE coding CASCADE CONSTRAINTS;
DROP TABLE coursetype CASCADE CONSTRAINTS;
DROP TABLE studylecture CASCADE CONSTRAINTS;
DROP TABLE subnote CASCADE CONSTRAINTS;
DROP TABLE teachlecture CASCADE CONSTRAINTS;
DROP TABLE lecture CASCADE CONSTRAINTS;
DROP TABLE studycourse CASCADE CONSTRAINTS;
DROP TABLE teachcourse CASCADE CONSTRAINTS;
DROP TABLE course CASCADE CONSTRAINTS;
DROP TABLE error CASCADE CONSTRAINTS;
DROP TABLE interest CASCADE CONSTRAINTS;
DROP TABLE member_jt CASCADE CONSTRAINTS;
DROP TABLE typename CASCADE CONSTRAINTS;





/* Create Tables */

-- 새 테이블 : (3)자가진단 테이블
CREATE TABLE ability
(
	id varchar2(20) NOT NULL,
	typeno number(2,0) NOT NULL,
	value number(1,0) NOT NULL
);


-- 새 테이블 : (12)강의 청취 여부 테이블
CREATE TABLE checklecture
(
	id varchar2(20) NOT NULL,
	courseno number(6,0) NOT NULL,
	lectureno number(6,0) NOT NULL,
	watchedcheck varchar2(3) NOT NULL
);


-- 새 테이블 : (8)코딩 연습 문제 테이블
CREATE TABLE coding
(
	codingno number(6,0) NOT NULL,
	typeno number(2,0) NOT NULL,
	codingquestion varchar2(4000) NOT NULL,
	codingtemplet clob,
	lectureno number(6,0),
	PRIMARY KEY (codingno)
);


-- 새 테이블 : (5)전체 강좌 테이블
CREATE TABLE course
(
	courseno number(6,0) NOT NULL,
	typeno number(2,0) NOT NULL,
	coursename varchar2(30) NOT NULL,
	id varchar2(20) NOT NULL,
	username varchar2(20) NOT NULL,
	introdution varchar2(4000) NOT NULL,
	PRIMARY KEY (courseno)
);


-- 새 테이블 : (6)강좌 별 분야 테이블
CREATE TABLE coursetype
(
	courseno number(6,0) NOT NULL,
	typeno number(2,0) NOT NULL
);


-- 새 테이블 : (18)에러 테이블
CREATE TABLE error
(
	errorname varchar2(50) NOT NULL,
	response varchar2(2000),
	PRIMARY KEY (errorname)
);


-- 새 테이블 : (2)관심분야 테이블
CREATE TABLE interest
(
	id varchar2(20) NOT NULL,
	typeno number(2,0) NOT NULL,
	value number(1,0) NOT NULL
);


-- 새 테이블 : (7)전체 강의 테이블  - 강좌마다 다른 [강의 테이블]생성
CREATE TABLE lecture
(
	courseno number(6,0) NOT NULL,
	lectureno number(6,0) NOT NULL,
	lecturename varchar2(30) NOT NULL,
	regdate date DEFAULT sysdate NOT NULL,
	originalfilename varchar2(50) NOT NULL,
	uploadedfilename varchar2(200) NOT NULL,
	PRIMARY KEY (lectureno)
);


-- 새 테이블 : (1)회원 테이블
CREATE TABLE member_jt
(
	id varchar2(20) NOT NULL,
	password varchar2(20) NOT NULL,
	username varchar2(20) NOT NULL,
	email varchar2(50) NOT NULL,
	point number(10,0) DEFAULT 0 NOT NULL,
	countquestion number(6,0) NOT NULL,
	countresponse number(6,0) NOT NULL,
	countrecommend number(6,0) DEFAULT 0 NOT NULL,
	PRIMARY KEY (id)
);

create sequence question_seq;

-- 새 테이블 : (15) 질문 테이블
CREATE TABLE question
(
	questionno number(6,0) NOT NULL,
	typeno number(2,0) NOT NULL,
	codingno number(6,0),
	id varchar2(20) NOT NULL,
	username varchar2(50) NOT NULL,
	title varchar2(50) NOT NULL,
	content clob NOT NULL,
	regdate date DEFAULT sysdate NOT NULL,
	hitcount number(6,0) DEFAULT 0 NOT NULL,
	curious number(6,0) DEFAULT 0 NOT NULL,
	PRIMARY KEY (questionno)
);

create sequence reply_seq

-- 새 테이블 : (16) 답변 테이블
CREATE TABLE reply
(
	questionno number(6,0) NOT NULL,
	replyno number(10,0) NOT NULL,
	id varchar2(20) NOT NULL,
	username varchar2(50) NOT NULL,
	content clob NOT NULL,
	regdate date DEFAULT sysdate NOT NULL,
	recommend number(6,0) DEFAULT 0 NOT NULL,
	PRIMARY KEY (replyno)
);


-- 새 테이블 : (17) (답변의) 답글 테이블
CREATE TABLE rereply
(
	replyno number(10,0) NOT NULL,
	id varchar2(20) NOT NULL,
	content varchar2(1000) NOT NULL,
	regdate date DEFAULT sysdate NOT NULL,
	username varchar2(20) NOT NULL
);


-- 새 테이블 : (4)학생문제보관함
CREATE TABLE studycodingbox
(
	id varchar2(20) NOT NULL,
	codingno number(6,0) NOT NULL,
	coding clob
);


-- 새 테이블
CREATE TABLE studycourse
(
	id varchar2(20) NOT NULL,
	courseno number(6,0) NOT NULL,
	coursename varchar2(30) NOT NULL,
	startdate date NOT NULL,
	enddate date NOT NULL
);


-- 새 테이블 : (12)(특정 회원 기준) 자신이 배우는 강의 테이블
CREATE TABLE studylecture
(
	id varchar2(20) NOT NULL,
	lectureno number(6,0),
	startdate date NOT NULL,
	enddate date NOT NULL
);


-- 새 테이블
CREATE TABLE subnote
(
	id varchar2(20) NOT NULL,
	subnoteno number(6,0) NOT NULL,
	originalfilename varchar2(50) NOT NULL,
	uploadedfilename varchar2(200) NOT NULL,
	lectureno number(6,0) NOT NULL,
	PRIMARY KEY (subnoteno)
);


-- 새 테이블 : (9)((특정 회원 기준) 자신이 가르치는 강좌 테이블
CREATE TABLE teachcourse
(
	id varchar2(20) NOT NULL,
	courseno number(6,0) NOT NULL,
	coursename varchar2(30) NOT NULL
);


-- 새 테이블 : (10)(특정 회원 기준) 자신이 가르치는 강의 테이블
CREATE TABLE teachlecture
(
	id varchar2(20) NOT NULL,
	courseno number(6,0) NOT NULL,
	lectureno number(6,0),
	point number(10,0) NOT NULL,
	studentcount number(6,0) NOT NULL
);


-- 새 테이블 : (19)분야 테이블
CREATE TABLE typename
(
	type varchar2(20) NOT NULL,
	typeno number(2,0) NOT NULL,
	PRIMARY KEY (typeno)
);



/* Create Foreign Keys */

ALTER TABLE question
	ADD FOREIGN KEY (codingno)
	REFERENCES coding (codingno)
;


ALTER TABLE studycodingbox
	ADD FOREIGN KEY (codingno)
	REFERENCES coding (codingno)
;


ALTER TABLE checklecture
	ADD FOREIGN KEY (courseno)
	REFERENCES course (courseno)
;


ALTER TABLE coursetype
	ADD FOREIGN KEY (courseno)
	REFERENCES course (courseno)
;


ALTER TABLE lecture
	ADD FOREIGN KEY (courseno)
	REFERENCES course (courseno)
;


ALTER TABLE studycourse
	ADD FOREIGN KEY (courseno)
	REFERENCES course (courseno)
;


ALTER TABLE teachcourse
	ADD FOREIGN KEY (courseno)
	REFERENCES course (courseno)
;


ALTER TABLE teachlecture
	ADD FOREIGN KEY (courseno)
	REFERENCES course (courseno)
;


ALTER TABLE checklecture
	ADD FOREIGN KEY (lectureno)
	REFERENCES lecture (lectureno)
;


ALTER TABLE coding
	ADD FOREIGN KEY (lectureno)
	REFERENCES lecture (lectureno)
;


ALTER TABLE studylecture
	ADD FOREIGN KEY (lectureno)
	REFERENCES lecture (lectureno)
;


ALTER TABLE subnote
	ADD FOREIGN KEY (lectureno)
	REFERENCES lecture (lectureno)
;


ALTER TABLE teachlecture
	ADD FOREIGN KEY (lectureno)
	REFERENCES lecture (lectureno)
;


ALTER TABLE ability
	ADD FOREIGN KEY (id)
	REFERENCES member_jt (id)
;


ALTER TABLE checklecture
	ADD FOREIGN KEY (id)
	REFERENCES member_jt (id)
;


ALTER TABLE course
	ADD FOREIGN KEY (id)
	REFERENCES member_jt (id)
;


ALTER TABLE interest
	ADD FOREIGN KEY (id)
	REFERENCES member_jt (id)
;


ALTER TABLE question
	ADD FOREIGN KEY (id)
	REFERENCES member_jt (id)
;


ALTER TABLE reply
	ADD FOREIGN KEY (id)
	REFERENCES member_jt (id)
;


ALTER TABLE rereply
	ADD FOREIGN KEY (id)
	REFERENCES member_jt (id)
;


ALTER TABLE studycodingbox
	ADD FOREIGN KEY (id)
	REFERENCES member_jt (id)
;


ALTER TABLE studycourse
	ADD FOREIGN KEY (id)
	REFERENCES member_jt (id)
;


ALTER TABLE studylecture
	ADD FOREIGN KEY (id)
	REFERENCES member_jt (id)
;


ALTER TABLE subnote
	ADD FOREIGN KEY (id)
	REFERENCES member_jt (id)
;


ALTER TABLE teachcourse
	ADD FOREIGN KEY (id)
	REFERENCES member_jt (id)
;


ALTER TABLE teachlecture
	ADD FOREIGN KEY (id)
	REFERENCES member_jt (id)
;


ALTER TABLE reply
	ADD FOREIGN KEY (questionno)
	REFERENCES question (questionno)
;


ALTER TABLE rereply
	ADD FOREIGN KEY (replyno)
	REFERENCES reply (replyno)
;


ALTER TABLE ability
	ADD FOREIGN KEY (typeno)
	REFERENCES typename (typeno)
;


ALTER TABLE coding
	ADD FOREIGN KEY (typeno)
	REFERENCES typename (typeno)
;


ALTER TABLE course
	ADD FOREIGN KEY (typeno)
	REFERENCES typename (typeno)
;


ALTER TABLE interest
	ADD FOREIGN KEY (typeno)
	REFERENCES typename (typeno)
;


ALTER TABLE question
	ADD FOREIGN KEY (typeno)
	REFERENCES typename (typeno)
;



/* Comments */

COMMENT ON TABLE ability IS '새 테이블 : (3)자가진단 테이블';
COMMENT ON COLUMN ability.id IS 'id';
COMMENT ON COLUMN ability.typeno IS 'typeno';
COMMENT ON COLUMN ability.value IS 'value';
COMMENT ON TABLE checklecture IS '새 테이블 : (12)강의 청취 여부 테이블';
COMMENT ON COLUMN checklecture.id IS 'id';
COMMENT ON COLUMN checklecture.courseno IS 'courseno';
COMMENT ON COLUMN checklecture.lectureno IS 'lectureno';
COMMENT ON COLUMN checklecture.watchedcheck IS 'watchedcheck';
COMMENT ON TABLE coding IS '새 테이블 : (8)코딩 연습 문제 테이블';
COMMENT ON COLUMN coding.codingno IS 'codingno';
COMMENT ON COLUMN coding.typeno IS 'typeno';
COMMENT ON COLUMN coding.codingquestion IS 'codingquestion';
COMMENT ON COLUMN coding.codingtemplet IS 'codingtemplet';
COMMENT ON COLUMN coding.lectureno IS 'lectureno';
COMMENT ON TABLE course IS '새 테이블 : (5)전체 강좌 테이블';
COMMENT ON COLUMN course.courseno IS 'courseno';
COMMENT ON COLUMN course.typeno IS 'typeno : 분야';
COMMENT ON COLUMN course.coursename IS 'coursename';
COMMENT ON COLUMN course.id IS 'id';
COMMENT ON COLUMN course.username IS 'username';
COMMENT ON COLUMN course.introdution IS 'introdution';
COMMENT ON TABLE coursetype IS '새 테이블 : (6)강좌 별 분야 테이블';
COMMENT ON COLUMN coursetype.courseno IS 'courseno';
COMMENT ON COLUMN coursetype.typeno IS 'typeno';
COMMENT ON TABLE error IS '새 테이블 : (18)에러 테이블';
COMMENT ON COLUMN error.errorname IS 'errorname';
COMMENT ON COLUMN error.response IS 'response';
COMMENT ON TABLE interest IS '새 테이블 : (2)관심분야 테이블';
COMMENT ON COLUMN interest.id IS 'id';
COMMENT ON COLUMN interest.typeno IS 'typeno';
COMMENT ON COLUMN interest.value IS 'value';
COMMENT ON TABLE lecture IS '새 테이블 : (7)전체 강의 테이블  - 강좌마다 다른 [강의 테이블]생성';
COMMENT ON COLUMN lecture.courseno IS 'courseno';
COMMENT ON COLUMN lecture.lectureno IS 'lectureno';
COMMENT ON COLUMN lecture.lecturename IS 'lecturename';
COMMENT ON COLUMN lecture.regdate IS 'regdate';
COMMENT ON COLUMN lecture.originalfilename IS 'originalfilename';
COMMENT ON COLUMN lecture.uploadedfilename IS 'uploadedfilename';
COMMENT ON TABLE member_jt IS '새 테이블 : (1)회원 테이블';
COMMENT ON COLUMN member_jt.id IS 'id';
COMMENT ON COLUMN member_jt.password IS 'password';
COMMENT ON COLUMN member_jt.username IS 'username';
COMMENT ON COLUMN member_jt.email IS 'email';
COMMENT ON COLUMN member_jt.point IS 'point';
COMMENT ON COLUMN member_jt.countquestion IS 'countquestion : 질문 횟수';
COMMENT ON COLUMN member_jt.countresponse IS 'countresponse : 답변 횟수 ';
COMMENT ON COLUMN member_jt.countrecommend IS 'countrecommend : 답변 추천 횟수 ';
COMMENT ON TABLE question IS '새 테이블 : (15) 질문 테이블';
COMMENT ON COLUMN question.questionno IS 'questionno';
COMMENT ON COLUMN question.typeno IS 'typeno';
COMMENT ON COLUMN question.codingno IS 'codingno';
COMMENT ON COLUMN question.id IS 'id';
COMMENT ON COLUMN question.username IS 'username';
COMMENT ON COLUMN question.title IS 'title';
COMMENT ON COLUMN question.content IS 'content';
COMMENT ON COLUMN question.regdate IS 'regdate';
COMMENT ON COLUMN question.hitcount IS 'hitcount';
COMMENT ON COLUMN question.curious IS 'curious';
COMMENT ON TABLE reply IS '새 테이블 : (16) 답변 테이블';
COMMENT ON COLUMN reply.questionno IS 'questionno';
COMMENT ON COLUMN reply.replyno IS 'replyno';
COMMENT ON COLUMN reply.id IS 'id';
COMMENT ON COLUMN reply.username IS 'username';
COMMENT ON COLUMN reply.content IS 'content';
COMMENT ON COLUMN reply.regdate IS 'regdate';
COMMENT ON COLUMN reply.recommend IS 'recommend : 추천도 - 베스트 답변 선정 위함';
COMMENT ON TABLE rereply IS '새 테이블 : (17) (답변의) 답글 테이블';
COMMENT ON COLUMN rereply.replyno IS 'replyno';
COMMENT ON COLUMN rereply.id IS 'id';
COMMENT ON COLUMN rereply.content IS 'content';
COMMENT ON COLUMN rereply.regdate IS 'regdate';
COMMENT ON COLUMN rereply.username IS 'username';
COMMENT ON TABLE studycodingbox IS '새 테이블 : (4)학생문제보관함';
COMMENT ON COLUMN studycodingbox.id IS 'id';
COMMENT ON COLUMN studycodingbox.codingno IS 'codingno';
COMMENT ON COLUMN studycodingbox.coding IS 'coding';
COMMENT ON TABLE studycourse IS '새 테이블';
COMMENT ON COLUMN studycourse.id IS 'id';
COMMENT ON COLUMN studycourse.courseno IS 'courseno : 강좌목록';
COMMENT ON COLUMN studycourse.coursename IS 'coursename';
COMMENT ON COLUMN studycourse.startdate IS 'startdate';
COMMENT ON COLUMN studycourse.enddate IS 'enddate';
COMMENT ON TABLE studylecture IS '새 테이블 : (12)(특정 회원 기준) 자신이 배우는 강의 테이블';
COMMENT ON COLUMN studylecture.id IS 'id';
COMMENT ON COLUMN studylecture.lectureno IS 'lectureno';
COMMENT ON COLUMN studylecture.startdate IS 'startdate';
COMMENT ON COLUMN studylecture.enddate IS 'enddate';
COMMENT ON TABLE subnote IS '새 테이블';
COMMENT ON COLUMN subnote.id IS 'id';
COMMENT ON COLUMN subnote.subnoteno IS 'subnoteno';
COMMENT ON COLUMN subnote.originalfilename IS 'originalfilename';
COMMENT ON COLUMN subnote.uploadedfilename IS 'uploadedfilename';
COMMENT ON COLUMN subnote.lectureno IS 'lectureno';
COMMENT ON TABLE teachcourse IS '새 테이블 : (9)((특정 회원 기준) 자신이 가르치는 강좌 테이블';
COMMENT ON COLUMN teachcourse.id IS 'id';
COMMENT ON COLUMN teachcourse.courseno IS 'courseno : 전체강좌목록';
COMMENT ON COLUMN teachcourse.coursename IS 'coursename';
COMMENT ON TABLE teachlecture IS '새 테이블 : (10)(특정 회원 기준) 자신이 가르치는 강의 테이블';
COMMENT ON COLUMN teachlecture.id IS 'id';
COMMENT ON COLUMN teachlecture.courseno IS 'courseno';
COMMENT ON COLUMN teachlecture.lectureno IS 'lectureno';
COMMENT ON COLUMN teachlecture.point IS 'point';
COMMENT ON COLUMN teachlecture.studentcount IS 'studentcount';
COMMENT ON TABLE typename IS '새 테이블 : (19)분야 테이블';
COMMENT ON COLUMN typename.type IS 'type';
COMMENT ON COLUMN typename.typeno IS 'typeno';



