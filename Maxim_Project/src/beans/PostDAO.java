package beans;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import common.PointQuery;
import common.PostQuery;

public class PostDAO extends DefaultDAO {

	// 게시글을 쓰면 글쓴이에게 포인트 부여!
	public int incUserPoint(int user_point, int user_uid) throws SQLException {
		int cnt = 0;

		try {
			pstmt = conn.prepareStatement(PointQuery.SQL_POINT_INC);
			pstmt.setInt(1, user_point);
			pstmt.setInt(2, user_uid);

			cnt = pstmt.executeUpdate();
		} finally {
			close();
		}

		return cnt;
	}

	// 글쓴이 user_uid 찾기
	public int findUserUid(int post_uid) throws SQLException {
		int user_uid = 0;

		try {
			pstmt = conn.prepareStatement(PointQuery.SQL_FIND_USERUID);
			pstmt.setInt(1, post_uid);

			rs = pstmt.executeQuery();

			while (rs.next()) {

				user_uid = rs.getInt(1);
				System.out.println(user_uid);
			}

		} finally {
			close();
		}

		return user_uid;
	}

	// 새글 작성 <-- DTO 사용
	public int insert(PostDTO dto) throws SQLException {
		String post_subject = dto.getPost_subject();
		String post_content = dto.getPost_content();
		int board_uid = dto.getBoard_uid();
		int category_uid = dto.getCategory_uid();
		int user_uid = dto.getUser_uid();

		int cnt = this.insert(post_subject, post_content, board_uid, category_uid, user_uid);
		return cnt;
	}

	// 새글 작성 <-- DTO 사용 X
	public int insert(String post_subject, String post_content, int board_uid, int category_uid, int user_uid)
			throws SQLException {
		int cnt = 0;

		try {
			pstmt = conn.prepareStatement(PostQuery.SQL_POST_INSERT);
			pstmt.setString(1, post_subject);
			pstmt.setString(2, post_content);
			pstmt.setInt(3, board_uid);
			pstmt.setInt(4, category_uid);
			pstmt.setInt(5, user_uid);

			cnt = pstmt.executeUpdate();
		} finally {
			close();
		}

		return cnt;
	}

	// post_uid 이용하여 글 삭제하기
	public int deleteByUid(int post_uid) throws SQLException {
		int cnt = 0;
		try {
			pstmt = conn.prepareStatement(PostQuery.SQL_POST_DELETE_BY_UID);
			pstmt.setInt(1, post_uid);
			cnt = pstmt.executeUpdate();

		} finally {
			close();
		}

		return cnt;
	} // end deleteByUid()

	// ResultSet --> DTO 배열로 리턴
	public PostDTO[] createArray(ResultSet rs) throws SQLException {
		PostDTO[] arr = null; // DTO 배열

		ArrayList<PostDTO> list = new ArrayList<PostDTO>();

		while (rs.next()) {
			int post_uid = rs.getInt("post_uid");
			String post_subject = rs.getString("post_subject");
			String post_content = rs.getString("post_content");
			int post_viewcnt = rs.getInt("post_viewcnt");
			int board_uid = rs.getInt("board_uid");
			int category_uid = rs.getInt("category_uid");
			int user_uid = rs.getInt("user_uid");
			String user_name = rs.getString("user_name");
//				int comment_uids = rs.getInt("comment_uids");

			Date d = rs.getDate("post_regdate");
			Time t = rs.getTime("post_regdate");

			String post_regdate = "";
			if (d != null) {
				post_regdate = new SimpleDateFormat("yyyy-MM-dd").format(d) + " "
						+ new SimpleDateFormat("hh:mm:ss").format(t);
			}

			PostDTO dto = new PostDTO(post_uid, post_subject, post_content, post_regdate, post_viewcnt, board_uid,
					user_uid, category_uid);

			dto.setUser_name(user_name);
			list.add(dto);

		} // end while

		int size = list.size();

		if (size == 0)
			return null;

		arr = new PostDTO[size];
		list.toArray(arr); // List -> 배열
		return arr;
	}

	// ResultSet --> DTO 배열로 리턴(추천수, 댓글 개수등 추가)
	public PostDTO[] createArray2(ResultSet rs) throws SQLException {
		PostDTO[] arr = null; // DTO 배열

		ArrayList<PostDTO> list = new ArrayList<PostDTO>();

		while (rs.next()) {
			int post_uid = rs.getInt("post_uid");
			String post_subject = rs.getString("post_subject");
			String post_content = rs.getString("post_content");
			int post_viewcnt = rs.getInt("post_viewcnt");
			int board_uid = rs.getInt("board_uid");
			int category_uid = rs.getInt("category_uid");
			int user_uid = rs.getInt("user_uid");
			String user_name = rs.getString("user_name");
			int comments_count = rs.getInt("comments_count");
			int sel_comments = rs.getInt("sel_comments");

			Date d = rs.getDate("post_regdate");
			Time t = rs.getTime("post_regdate");

			String post_regdate = "";
			if (d != null) {
				post_regdate = new SimpleDateFormat("yyyy-MM-dd").format(d) + " "
						+ new SimpleDateFormat("hh:mm:ss").format(t);
			}

			PostDTO dto = new PostDTO(post_uid, post_subject, post_content, post_regdate, post_viewcnt, board_uid,
					user_uid, category_uid);

			dto.setUser_name(user_name);
			dto.setComments_count(comments_count);
			dto.setSel_comments(sel_comments);
			list.add(dto);

		} // end while

		int size = list.size();

		if (size == 0)
			return null;

		arr = new PostDTO[size];
		list.toArray(arr); // List -> 배열
		return arr;
	}

	// tb_post의 모든 값 가져오기
	public PostDTO[] select() throws SQLException {
		PostDTO[] arr = null;

		try {
			pstmt = conn.prepareStatement(PostQuery.SQL_POST_SELECT);
			rs = pstmt.executeQuery();
			arr = createArray(rs);
		} finally {
			close();
		}

		return arr;
	} // end select()

	// tb_post의 모든 값 가져오기 with Option
	public PostDTO[] selectWithOption() throws SQLException {
		PostDTO[] arr = null;

		try {
			pstmt = conn.prepareStatement(PostQuery.SQL_POST_SELECT_WITH_OPTION);
			rs = pstmt.executeQuery();
			arr = createArray2(rs);
		} finally {
			close();
		}

		return arr;
	} // end select()

	// 특정 게시판의 모든 게시글 가져오기 with Option, 페이징 처리
	public PostDTO[] selectWithOption(int boardUid, int page, int writePages) throws SQLException {
		PostDTO[] arr = null;

		try {
			pstmt = conn.prepareStatement(PostQuery.SQL_POST_SELECT_BY_BOARDUID);
			pstmt.setInt(1, boardUid);
			pstmt.setInt(2, page);
			pstmt.setInt(3, page);
			pstmt.setInt(4, writePages);
			rs = pstmt.executeQuery();
			arr = createArray2(rs);
		} finally {
			close();
		}

		return arr;
	} // end select()

	// tb_post의 모든 값 가져오기 / 검색결과 보여주기
	public PostDTO[] findPostByOption(int page, int writePages, String keyword, int searchOption, int boardUid)
			throws SQLException {
		PostDTO[] arr = null;
		String sqlQuery = "";

		switch (searchOption) {
		case 1:
			sqlQuery = PostQuery.SQL_POST_FIND_BY_SUBJECT;
			break;
		case 2:
			sqlQuery = PostQuery.SQL_POST_FIND_BY_CONTENT;
			break;
		case 3:
			sqlQuery = PostQuery.SQL_POST_FIND_BY_USERNAME;
			break;
		}

		try {
			pstmt = conn.prepareStatement(sqlQuery);
			pstmt.setInt(1, boardUid);
			pstmt.setString(2, keyword);
			pstmt.setInt(3, page);
			pstmt.setInt(4, page);
			pstmt.setInt(5, writePages);
			rs = pstmt.executeQuery();
			arr = createArray2(rs);
		} finally {
			close();
		}

		return arr;
	} // end select()

	// 페이지 수 가져오기
	public int getTotalPages() {
		int totalPages = 1; // 디폴트 총 1페이지

		try {
			pstmt = conn.prepareStatement(PostQuery.SQL_POST_TOTALPOST);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				totalPages = rs.getInt("totals");
			}

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("쿼리문제");
		} finally {
			try {
				close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return totalPages;
	}

	// 게시판에 맞게 페이지 수 가져오기
	public int getTotalPages(int boardUid) {
		int totalPages = 1; // 디폴트 총 1페이지

		try {
			pstmt = conn.prepareStatement(PostQuery.SQL_POST_TOTALPOST_BY_BOARD);
			pstmt.setInt(1, boardUid);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				totalPages = rs.getInt("totals");
			}

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("쿼리문제");
		} finally {
			try {
				close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return totalPages;
	}

	// 페이지 수 가져오기(조건 사용)
	public int getTotalPagesByOption(String keyword, int option) {
		int totalPages = 1; // 디폴트 총 1페이지
		String sql = "";

		switch (option) {
		case 1:
			sql = PostQuery.SQL_TOTAL_FIND_BY_SUBJECT;
			break;
		case 2:
			sql = PostQuery.SQL_TOTAL_FIND_BY_CONTENT;
			break;
		case 3:
			sql = PostQuery.SQL_TOTAL_FIND_BY_USERNAME;
			break;
		}

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, keyword);
			System.out.println(keyword);
			rs = pstmt.executeQuery();
			System.out.println(rs);

			while (rs.next()) {
				totalPages = rs.getInt(1);
			}

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("쿼리문제");
		} finally {
			try {
				close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return totalPages;
	}

	// 특정 post_uid 의 글 내용 읽기, 조회수 증가
	// viewCnt 도 1 증가 해야 하고, 읽어와야 한다 --> 트랜잭션 처리
	public PostDTO[] readByUid(int post_uid) throws SQLException {
		int cnt = 0;
		PostDTO[] arr = null;

		try {
			// Auto-commit 비활성화
			conn.setAutoCommit(false);

			// 조회수 먼저 올리고
			pstmt = conn.prepareStatement(PostQuery.SQL_POST_INC_VIEWCNT);
			pstmt.setInt(1, post_uid);
			cnt = pstmt.executeUpdate();

			pstmt.close();

			// 게시글 보여주기 위해 모든 요소 가져오기
			pstmt = conn.prepareStatement(PostQuery.SQL_POST_SELECT_BY_UID);
			pstmt.setInt(1, post_uid);
			rs = pstmt.executeQuery();

			arr = createArray(rs);
			conn.commit();

		} catch (SQLException e) {
			conn.rollback();
			throw e;
		} finally {
			close();
		}

		return arr;

	} // end readByUid()

	// 특정 post_uid 의 게시글 모든 요소 가져오기, 조회수 증가없음
	public PostDTO[] selectByUid(int post_uid) throws SQLException {
		PostDTO[] arr = null;

		try {
			pstmt = conn.prepareStatement(PostQuery.SQL_POST_SELECT_BY_UID);
			pstmt.setInt(1, post_uid);
			rs = pstmt.executeQuery();
			arr = createArray(rs);
		} finally {
			close();
		}

		return arr;
	}


	// 게시글 수정 기능
	public int update(int post_uid, String post_subject, int category_uid, String post_content) throws SQLException {
		int cnt = 0;

		try {
			pstmt = conn.prepareStatement(PostQuery.SQL_POST_UPDATE);
			pstmt.setString(1, post_subject);
			pstmt.setString(2, post_content);
			pstmt.setInt(3, category_uid);
			pstmt.setInt(4, post_uid);

			cnt = pstmt.executeUpdate();

		} finally {
			close();
		}

		return cnt;
	} // end update()

} // end PostDAO