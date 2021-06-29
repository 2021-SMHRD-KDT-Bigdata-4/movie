package movie.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import movie.model.MemberDAO;

public class DeleteController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		

		int member_seq = Integer.parseInt("member_seq");
		MemberDAO dao = new MemberDAO();
		int cnt=dao.deleteMember(member_seq);
		
		// 형식상 보내기
		PrintWriter out = response.getWriter();
		out.print(cnt);
		
		return null;
	}

}
