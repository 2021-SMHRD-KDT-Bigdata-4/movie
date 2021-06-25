package movie.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import movie.model.MemberDAO;
import movie.model.MemberVO;

public class SignupController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//System.out.print(request == null);
		//System.out.print(request.getParameter("member_seq"));
		// int member_seq = Integer.getInteger(request.getParameter("member_seq"));
		// seq는 sql쪽애서 처리하기때문에 여기다가 getParameter해줄필요 없음
		// getParameter은 말그대로 폼에서 적엇던 값을 가져오기 위함 메모메모
		String member_id = request.getParameter("member_id");
		String member_password = request.getParameter("member_password");
	    String member_name = request.getParameter("member_name");
	    String member_age = request.getParameter("member_age");
	    String member_gender = request.getParameter("member_gender");
	    String member_phone = request.getParameter("member_phone");
	    String member_genre = request.getParameter("member_genre");
	    // String admin_id = request.getParameter("admin_id");
	    // 임시로 설정 - 사용자 입력이 아닌 내부에서 넣어줘야함
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
		int cnt = dao.signupMember(vo);
		PrintWriter out = response.getWriter();
		out.println(cnt);
		
		return null;
	}
}
