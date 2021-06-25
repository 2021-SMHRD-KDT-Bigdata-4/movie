package movie.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 세션 로그아웃 => 기족에 만들어진 세션 가져오기
		HttpSession session = request.getSession(); // 가져와서 연결되어 있으면 session에 뭐가 들어가 있기 때문에 끊어야됨
		session.invalidate(); // 만들어진 세션 끊어버리기~!
		
		return null;
	}

}
