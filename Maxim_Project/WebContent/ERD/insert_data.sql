--시퀀스를 안쓰는게 나은 테이블도 있음!

--tb_user 값 입력 예시

INSERT INTO TB_USER (USER_UID , USER_EMAIL , USER_PW , USER_NAME , USER_REGDATE , USER_PHONE , USER_ISVALID , USER_AUTH , USER_POINT , MYPAGE_SUBJECT , MYPAGE_CONTENT ) 
VALUES (user_seq.nextval, 'kdash111@naver.com', '3a7bd3e2360a3d29eea436fcfb7e44c735d117c42d1c1835420b6b9942dd4f1b', '이강혁', sysdate, '0101545678', 'F', 'G', 10, '안녕하세요', '자기소개를 해주세요')
;
INSERT INTO TB_USER (USER_UID , USER_EMAIL , USER_PW , USER_NAME , USER_REGDATE , USER_PHONE , USER_ISVALID , USER_AUTH , USER_POINT , MYPAGE_SUBJECT , MYPAGE_CONTENT )
VALUES (user_seq.nextval, 'bbb@naver.com', '3a7bd3e2360a3d29eea436fcfb7e44c735d117c42d1c1835420b6b9942dd4f1b', '조현주', sysdate, '01077869908', 'F', 'G', 10, '안녕하세요', '자기소개를 해주세요')
;
INSERT INTO TB_USER (USER_UID , USER_EMAIL , USER_PW , USER_NAME , USER_REGDATE , USER_PHONE , USER_ISVALID , USER_AUTH , USER_POINT , MYPAGE_SUBJECT , MYPAGE_CONTENT )
VALUES (user_seq.nextval, 'ccc@naver.com', '3a7bd3e2360a3d29eea436fcfb7e44c735d117c42d1c1835420b6b9942dd4f1b', '이승환', sysdate, '01018996767', 'F', 'G', 10, '안녕하세요', '자기소개를 해주세요')
;
INSERT INTO TB_USER (USER_UID , USER_EMAIL , USER_PW , USER_NAME , USER_REGDATE , USER_PHONE , USER_ISVALID , USER_AUTH , USER_POINT , MYPAGE_SUBJECT , MYPAGE_CONTENT )
VALUES (user_seq.nextval, 'aaa@naver.com', '3a7bd3e2360a3d29eea436fcfb7e44c735d117c42d1c1835420b6b9942dd4f1b', '고유성', sysdate, '01067584532', 'F', 'G', 10, '안녕하세요', '자기소개를 해주세요')
;
INSERT INTO TB_USER (USER_UID , USER_EMAIL , USER_PW , USER_NAME , USER_REGDATE , USER_PHONE , USER_ISVALID , USER_AUTH , USER_POINT , MYPAGE_SUBJECT , MYPAGE_CONTENT )
VALUES (user_seq.nextval, 'ddd@naver.com', '3a7bd3e2360a3d29eea436fcfb7e44c735d117c42d1c1835420b6b9942dd4f1b', '임상빈', sysdate, '01089674567', 'F', 'G', 10, '안녕하세요', '자기소개를 해주세요')
;
INSERT INTO TB_USER (USER_UID , USER_EMAIL , USER_PW , USER_NAME , USER_REGDATE , USER_PHONE , USER_ISVALID , USER_AUTH , USER_POINT , MYPAGE_SUBJECT , MYPAGE_CONTENT )
VALUES (user_seq.nextval, 'eee@naver.com', '3a7bd3e2360a3d29eea436fcfb7e44c735d117c42d1c1835420b6b9942dd4f1b', '한수빈', sysdate, '01009876565', 'F', 'G', 10, '안녕하세요', '자기소개를 해주세요')
;
INSERT INTO TB_USER (USER_UID , USER_EMAIL , USER_PW , USER_NAME , USER_REGDATE , USER_PHONE , USER_ISVALID , USER_AUTH , USER_POINT , MYPAGE_SUBJECT , MYPAGE_CONTENT )
VALUES (user_seq.nextval, 'qywhs121@naver.com', '3a7bd3e2360a3d29eea436fcfb7e44c735d117c42d1c1835420b6b9942dd4f1b', '장수영', sysdate, '01032564556', 'F', 'G', 10, '안녕하세요', '자기소개를 해주세요')
;
INSERT INTO TB_USER (USER_UID , USER_EMAIL , USER_PW , USER_NAME , USER_REGDATE , USER_PHONE , USER_ISVALID , USER_AUTH , USER_POINT , MYPAGE_SUBJECT , MYPAGE_CONTENT )
VALUES (user_seq.nextval, 'yesJam98@daum.com', '3a7bd3e2360a3d29eea436fcfb7e44c735d117c42d1c1835420b6b9942dd4f1b', '윤지우', sysdate, '01067567867', 'F', 'G', 10, '안녕하세요', '자기소개를 해주세요')
;
INSERT INTO TB_USER (USER_UID , USER_EMAIL , USER_PW , USER_NAME , USER_REGDATE , USER_PHONE , USER_ISVALID , USER_AUTH , USER_POINT , MYPAGE_SUBJECT , MYPAGE_CONTENT )
VALUES (user_seq.nextval, 'space4885@naver.com', '3a7bd3e2360a3d29eea436fcfb7e44c735d117c42d1c1835420b6b9942dd4f1b', '최현주', sysdate, '01089896767', 'F', 'G', 10, '안녕하세요', '자기소개를 해주세요')
;
INSERT INTO TB_USER (USER_UID , USER_EMAIL , USER_PW , USER_NAME , USER_REGDATE , USER_PHONE , USER_ISVALID , USER_AUTH , USER_POINT , MYPAGE_SUBJECT , MYPAGE_CONTENT )
VALUES (user_seq.nextval, 'haha@nate.com', '3a7bd3e2360a3d29eea436fcfb7e44c735d117c42d1c1835420b6b9942dd4f1b', '홍성용', sysdate, '01078786565', 'F', 'G', 10, '안녕하세요', '자기소개를 해주세요')
;
INSERT INTO TB_USER (USER_UID , USER_EMAIL , USER_PW , USER_NAME , USER_REGDATE , USER_PHONE , USER_ISVALID , USER_AUTH , USER_POINT , MYPAGE_SUBJECT , MYPAGE_CONTENT )
VALUES (user_seq.nextval, 'biresd@naver.com', '3a7bd3e2360a3d29eea436fcfb7e44c735d117c42d1c1835420b6b9942dd4f1b', '장윤성', sysdate, '01056564343', 'F', 'G', 10, '안녕하세요', '자기소개를 해주세요')
;

--비밀번호 : apple 로 모두 리셋!
UPDATE TB_USER SET USER_PW = '3a7bd3e2360a3d29eea436fcfb7e44c735d117c42d1c1835420b6b9942dd4f1b'
;

SELECT * FROM tb_USER;
SELECT * FROM tb_email;

INSERT INTO TB_EMAIL (USER_EMAIL , USER_EMAILHASH , USER_EMAILCHECKED )
VALUES ('kdash111@naver.com', 'ed1525c634dc0e6fe298a22cfeab3760725fdf56d5dcf5f0e0c06473d997f916', '1')
;
INSERT INTO TB_EMAIL (USER_EMAIL , USER_EMAILHASH , USER_EMAILCHECKED )
VALUES ('bbb@naver.com', 'ed1525c634dc0e6fe298a22cfeab4760725fdf56d5dcf5f0e0c06473d997f916', '1')
;
INSERT INTO TB_EMAIL (USER_EMAIL , USER_EMAILHASH , USER_EMAILCHECKED )
VALUES ('ccc@naver.com', 'ed1525c634dc0e6fe298a22cfeab5760725fdf56d5dcf5f0e0c06473d997f916', '1')
;
INSERT INTO TB_EMAIL (USER_EMAIL , USER_EMAILHASH , USER_EMAILCHECKED )
VALUES ('aaa@naver.com', 'ed1525c634dc0e6fe298a22cfeab6760725fdf56d5dcf5f0e0c06473d997f916', '1')
;
INSERT INTO TB_EMAIL (USER_EMAIL , USER_EMAILHASH , USER_EMAILCHECKED )
VALUES ('ddd@naver.com', 'ed1525c634dc0e6fe298a22cfeab63760725fdf56d5dcf5f0e0c06473d997f916', '1')
;
INSERT INTO TB_EMAIL (USER_EMAIL , USER_EMAILHASH , USER_EMAILCHECKED )
VALUES ('eee@naver.com', 'ed1525c634dc0e6fe298a22cfeab2760725fdf56d5dcf5f0e0c06473d997f916', '1')
;
INSERT INTO TB_EMAIL (USER_EMAIL , USER_EMAILHASH , USER_EMAILCHECKED )
VALUES ('qywhs121@naver.com', 'ed1525c634dc0e6fe298a22tcfeab3760725fdf56d5dcf5f0e0c06473d997f916', '1')
;
INSERT INTO TB_EMAIL (USER_EMAIL , USER_EMAILHASH , USER_EMAILCHECKED )
VALUES ('yesJam98@daum.com', 'ed1525c634dc0e6fe298a22cfeabe3760725fdf56d5dcf5f0e0c06473d997f916', '1')
;
INSERT INTO TB_EMAIL (USER_EMAIL , USER_EMAILHASH , USER_EMAILCHECKED )
VALUES ('space4885@naver.com', 'ed1525c634dc0e6fe298a22cfeabw3760725fdf56d5dcf5f0e0c06473d997f916', '1')
;
INSERT INTO TB_EMAIL (USER_EMAIL , USER_EMAILHASH , USER_EMAILCHECKED )
VALUES ('haha@nate.com', 'ed1525c634dc0e6fe298a22cfeab3760725fdfr56d5dcf5f0e0c06473d997f916', '1')
;
INSERT INTO TB_EMAIL (USER_EMAIL , USER_EMAILHASH , USER_EMAILCHECKED )
VALUES ('biresd@naver.com', 'ed1525c634dc0e6fe298a22cfeab3760725fdtf56d5dcf5f0e0c06473d997f916', '1')
;



SELECT * FROM TB_POST tp ;

--tb_category 값 입력 예시
INSERT INTO TB_CATEGORY (CATEGORY_UID , CATEGORY_NAME )
VALUES (1, 'FrontEnd')
;
INSERT INTO TB_CATEGORY (CATEGORY_UID , CATEGORY_NAME )
VALUES (2, 'BackEnd')
;
INSERT INTO TB_CATEGORY (CATEGORY_UID , CATEGORY_NAME )
VALUES (3, 'Java')
;
INSERT INTO TB_CATEGORY (CATEGORY_UID , CATEGORY_NAME )
VALUES (4, 'Android')
;
INSERT INTO TB_CATEGORY (CATEGORY_UID , CATEGORY_NAME )
VALUES (5, 'JavaScript')
;
INSERT INTO TB_CATEGORY (CATEGORY_UID , CATEGORY_NAME )
VALUES (6, 'HTML5')
;
INSERT INTO TB_CATEGORY (CATEGORY_UID , CATEGORY_NAME )
VALUES (7, 'CSS')
;
INSERT INTO TB_CATEGORY (CATEGORY_UID , CATEGORY_NAME )
VALUES (8, '잡담')
;
INSERT INTO TB_CATEGORY (CATEGORY_UID , CATEGORY_NAME )
VALUES (9, '기타')
;

SELECT * FROM TB_CATEGORY;

--tb_board 값 입력 예시

INSERT INTO TB_BOARD (BOARD_UID , BAORD_NAME )
VALUES (1, '공지사항')
;
INSERT INTO TB_BOARD (BOARD_UID , BAORD_NAME )
VALUES (2, '자유게시판')
;
INSERT INTO TB_BOARD (BOARD_UID , BAORD_NAME )
VALUES (3, '팁게시판')
;
INSERT INTO TB_BOARD (BOARD_UID , BAORD_NAME )
VALUES (4, '질문게시판')
;

SELECT * FROM TB_BOARD;
DELETE FROM TB_BOARD;


--tb_post 값 입력 예시

INSERT INTO TB_POST (POST_UID , POST_SUBJECT , POST_CONTENT , POST_REGDATE , POST_VIEWCNT , BOARD_UID ,  USER_UID , CATEGORY_UID )
VALUES (post_seq.nextval, '공지글입니다', 'b;labfb', sysdate, 0, 1, 1, 2)
;
INSERT INTO TB_POST (POST_UID , POST_SUBJECT , POST_CONTENT , POST_REGDATE , POST_VIEWCNT , BOARD_UID ,  USER_UID , CATEGORY_UID )
VALUES (post_seq.nextval, '안드로이드', '자바스크립트는 좋고 편하고~~~~~~~', sysdate, 0, 2, 1, 1)
;
INSERT INTO TB_POST (POST_SUBJECT , POST_CONTENT , POST_REGDATE , POST_VIEWCNT , BOARD_UID ,  USER_UID , CATEGORY_UID )
VALUES ('자바스크립트 끝내기~~~~~~~~~~~~~~~~~~', '자바스크립트는 좋고 편하고~~~~~~~', sysdate, 0, 2, 1, 1)
;

--자료 대량 삽입
INSERT INTO TB_POST (POST_SUBJECT , POST_CONTENT , POST_REGDATE , POST_VIEWCNT , BOARD_UID ,  USER_UID , CATEGORY_UID )
SELECT POST_SUBJECT , POST_CONTENT , POST_REGDATE , POST_VIEWCNT , BOARD_UID , USER_UID , CATEGORY_UID FROM tb_post
;

SELECT * FROM TB_POST ORDER BY post_uid desc;
DELETE FROM TB_POST; 



--tb_comment 값 입력 예시
INSERT INTO TB_COMMENT VALUES (comment_seq.nextval, 'hihi', SYSDATE, 1, 1);
SELECT * FROM TB_COMMENT;

SELECT USER_NAME FROM 
(SELECT ROWNUM AS RNUM, T.* FROM (SELECT * FROM TB_USER ORDER BY USER_UID DESC) T); 

SELECT tp.*, tu.USER_NAME FROM TB_POST tp , TB_USER tu 
WHERE tp.USER_UID = tu.USER_UID AND tp.POST_SUBJECT LIKE '%자바%' ORDER BY tp.post_uid DESC

SELECT * FROM tb_page;




SELECT * FROM 
(
SELECT rownum AS rnum, tb_page.* 
FROM ( 
SELECT tp.*, tu.USER_NAME, tc.comments_count 
FROM TB_POST tp JOIN TB_USER tu 
ON tp.USER_UID = tu.USER_UID 
LEFT OUTER JOIN (SELECT tp.POST_UID, COUNT(tc.POST_UID) AS comments_count FROM TB_POST tp LEFT OUTER JOIN TB_COMMENT tc ON tp.POST_UID = tc.POST_UID GROUP BY tp.POST_UID) tc 
ON tp.POST_UID = tc.POST_UID
WHERE tu.USER_NAME LIKE '%홍%'
ORDER BY tp.POST_UID DESC 
) tb_page 
) 
WHERE rnum >= 1 AND RNUM < 1 + 5;


SELECT * FROM 
			(
			SELECT rownum AS rnum, tb_page.* 
			FROM ( 
			SELECT tp.*, tu.USER_NAME, tc.comments_count 
			FROM TB_POST tp JOIN TB_USER tu 
			ON tp.USER_UID = tu.USER_UID 
			LEFT OUTER JOIN (SELECT tp.POST_UID, COUNT(tc.POST_UID) AS comments_count FROM TB_POST tp LEFT OUTER JOIN TB_COMMENT tc ON tp.POST_UID = tc.POST_UID GROUP BY tp.POST_UID) tc 
			ON tp.POST_UID = tc.POST_UID
			WHERE tp.POST_CONTENT LIKE '%aa%'
			ORDER BY tp.POST_UID DESC 
			) tb_page 
			) 
			WHERE rnum >= 1 AND RNUM < 1 + 5;

SELECT POST_SUBJECT , POST_CONTENT FROM 
			(
			SELECT rownum AS rnum, tb_page.* 
			FROM ( 
			SELECT tp.*, tu.USER_NAME, tc.comments_count 
			FROM TB_POST tp JOIN TB_USER tu 
			ON tp.USER_UID = tu.USER_UID 
			LEFT OUTER JOIN (SELECT tp.POST_UID, COUNT(tc.POST_UID) AS comments_count FROM TB_POST tp LEFT OUTER JOIN TB_COMMENT tc ON tp.POST_UID = tc.POST_UID GROUP BY tp.POST_UID) tc 
			ON tp.POST_UID = tc.POST_UID
			WHERE tp.USER_UID LIKE 1
			ORDER BY tp.POST_UID DESC 
			) tb_page 
			);
			
			
			SELECT POST_SUBJECT , POST_CONTENT FROM 
( 
SELECT rownum AS rnum, tb_page.* 
FROM ( 
SELECT tp.*, tu.USER_NAME, tc.comments_count 
FROM TB_POST tp JOIN TB_USER tu 
ON tp.USER_UID = tu.USER_UID 
LEFT OUTER JOIN (SELECT tp.POST_UID, COUNT(tc.POST_UID) AS comments_count FROM TB_POST tp LEFT OUTER JOIN TB_COMMENT tc ON tp.POST_UID = tc.POST_UID GROUP BY tp.POST_UID) tc 
ON tp.POST_UID = tc.POST_UID 
WHERE tp.USER_UID LIKE  
ORDER BY tp.POST_UID DESC 
) tb_page 
) 