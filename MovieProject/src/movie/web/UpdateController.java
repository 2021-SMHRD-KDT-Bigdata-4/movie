package movie.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import movie.model.MemberDAO;
import movie.model.MemberVO;

public class UpdateController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String member_id = request.getParameter("member_id");
		String member_password = request.getParameter("member_password");
	    String member_name = request.getParameter("member_name");
	    String member_age = request.getParameter("member_age");
	    String member_gender = request.getParameter("member_gender");
	    String member_phone = request.getParameter("member_phone");
	    String member_genre = request.getParameter("member_genre");
	    String admin_id = "admin";
	    
		
		MemberVO vo = new MemberVO();
		vo.setMember_id(member_id);
		vo.setMember_password(member_password);
		vo.setMember_name(member_name);
		vo.setMember_age(member_age);
		vo.setMember_gender(member_gender);
		vo.setMember_phone(member_phone);
		vo.setMember_genre(member_genre);
		vo.setAdmin_id(admin_id);
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.updateMember(vo);
		PrintWriter out = response.getWriter();
		out.println(cnt);	
		
		return null;
	}

}
