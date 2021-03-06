package command.user;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.UserDAO;
import common.Command;
import common.PasswordMaker;

public class JoinCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		int cnt = 0;
		UserDAO dao = new UserDAO();

		// request에서 매개변수 받아오기
		String user_email = request.getParameter("user_email");
		String user_name = request.getParameter("user_name");
		String user_phone = request.getParameter("user_phone");
		String user_pw = request.getParameter("user_pw");
		
		if(user_email != null && user_name != null && user_phone != null &&
				user_pw != null &&  user_email.trim().length() > 0 && user_name.trim().length() > 0 &&
				user_phone.trim().length() > 0 && user_pw.trim().length() > 0 ) {
			
			try {
				cnt = dao.insertInfo(user_email, user_name, user_phone, PasswordMaker.sha256(user_pw));
				request.setAttribute("joinOk", cnt);  // 1 또는 0 이 나올 것 
			} catch(SQLException e) {
				e.printStackTrace();
			}
			
		} // end if
			
	}

}
