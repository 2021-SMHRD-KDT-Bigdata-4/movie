package movie.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import movie.model.MemberDAO;
import movie.model.MemberVO;

public class CheckController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String member_id = request.getParameter("member_id").trim();
		System.out.print("ajax전송 id :"+ member_id);	
		MemberDAO dao = new MemberDAO();
		
		 int cnt = dao.checkMember(member_id);
		 System.out.print("check결과 :"+ cnt);	
		 PrintWriter out = response.getWriter(); 
		 out.println(cnt); 
		 out.flush();
		 out.close();
		  
		 return null;
		 
		

	}
}
