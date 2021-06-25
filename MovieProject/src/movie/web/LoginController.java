package movie.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import movie.model.MemberDAO;
import movie.model.MemberVO;

public class LoginController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String member_id = request.getParameter("member_id");
		String member_password = request.getParameter("member_password");
		
		MemberVO vo = new MemberVO();
		vo.setMember_id(member_id);
		vo.setMember_password(member_password);
		
		MemberDAO dao = new MemberDAO();
		MemberVO MemberVO=dao.loginMember(vo);
		
		PrintWriter out = response.getWriter();
		if(MemberVO!=null) {
			out.print("YES");  // 인증에 성공(1)
			//객체바인딩 : 로그인에 성공했다는 사실을 모든 웹페이지가 공유할 수 있도록 해야한다. => 세션바인딩
			HttpSession session = request.getSession();
			session.setAttribute("MemberVO", MemberVO);
		}else {
			out.print("NO");   // 인증에 실패(0)
		}
				
		return null;
	}

}
