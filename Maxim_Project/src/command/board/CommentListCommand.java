package command.board;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.CommentDAO;
import beans.CommentDTO;
import common.Command;

public class CommentListCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		CommentDAO dao = new CommentDAO(); //DAO 객체 생성
		CommentDTO [] arr = null;
		
		int post_uid = Integer.parseInt(request.getParameter("post_uid"));
		
		try {
			arr = dao.selectByUid(post_uid);
			
			// "commentList"란 name으로  request에 arr값 전달
			// 즉 request에 담아서 컨트롤러에 전달되는 셈
			request.setAttribute("commentList", arr);
			
			
		} catch(SQLException e) {
			// 만약  connection pool 사용한다면
			// NamingException도 처리해야 함
			e.printStackTrace();
		}
		
	}

}
