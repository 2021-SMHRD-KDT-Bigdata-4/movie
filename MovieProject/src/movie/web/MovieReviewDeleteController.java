package movie.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import movie.model.ReviewDAO;

public class MovieReviewDeleteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int review_seq =Integer.parseInt(request.getParameter("review_seq"));
		ReviewDAO dao =new ReviewDAO();
		int cnt =dao.reviewDelete(review_seq);
		PrintWriter out = response.getWriter();
		out.println(cnt);
		return null;
	}
 
}
