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
		
		String member_id = request.getParameter("member_id");
		MemberDAO dao = new MemberDAO();
		int cnt=dao.deleteMember(member_id);
		// 형식상 보내기
		PrintWriter out = response.getWriter();
		out.print(cnt);
		
		return null;
	}

}
