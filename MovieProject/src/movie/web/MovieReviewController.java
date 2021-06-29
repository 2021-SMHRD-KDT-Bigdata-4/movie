package movie.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import movie.model.ReviewDAO;
import movie.model.ReviewVO;

public class MovieReviewController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String review_contents = request.getParameter("review_contents");
		String review_movie = request.getParameter("review_movie");
		int  member_seq = Integer.parseInt(request.getParameter("member_seq"));				
		int  movie_seq = Integer.parseInt(request.getParameter("movie_seq"));
		String review_id = request.getParameter("review_id");
		ReviewVO vo = new ReviewVO();// 객체만들기
		vo.setReview_contents(review_contents);
		vo.setReview_movie(review_movie);
		vo.setMember_seq(member_seq);
		vo.setMovie_seq(movie_seq);
		vo.setReview_id(review_id);
        ReviewDAO dao=new ReviewDAO();
		int cnt=dao.ReviewInsert(vo);
		PrintWriter out = response.getWriter();
		out.println(cnt);	
				
			
			

		return null; 
	}

}
