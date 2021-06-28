package movie.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import movie.model.MovieDAO;
import movie.model.MovieVO;
import movie.model.ReviewDAO;
import movie.model.ReviewVO;

public class MovieOneSelectController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int movie_seq=Integer.parseInt(request.getParameter("movie_seq"));		
		System.out.println(movie_seq);
		
		MovieDAO dao=new MovieDAO();
		ReviewDAO dao1= new ReviewDAO();
		List<ReviewVO> list =new ArrayList<ReviewVO>();
		try {
			//리뷰
			 list =dao1.reviewList();
			 request.setAttribute("list", list);
			//영화
			MovieVO vo=dao.oneselectMovie(movie_seq);
			HttpSession session1 = request.getSession();
			session1.setAttribute("MovieVO", vo);
			 request.setAttribute("vo", vo);
			 	
		} catch (Exception e) {			
			e.printStackTrace();
		}	
		return "MovieDetail";
	
		
	}

}
