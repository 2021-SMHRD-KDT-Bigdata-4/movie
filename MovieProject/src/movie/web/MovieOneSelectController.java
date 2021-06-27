package movie.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import movie.model.MovieDAO;
import movie.model.MovieVO;

public class MovieOneSelectController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int movie_seq=Integer.parseInt(request.getParameter("movie_seq"));		
		
		MovieDAO dao=new MovieDAO();
		try {
			MovieVO vo=dao.oneselectMovie(movie_seq);	
			 request.setAttribute("vo", vo);
			 	
		} catch (Exception e) {			
			e.printStackTrace();
		}	
		return "MovieDetail";
	
		
	}

}
