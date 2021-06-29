package movie.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import movie.model.MovieDAO;
import movie.model.MovieVO;

public class MovieRevieGenreController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String movie_genre=request.getParameter("movie_genre");		
		
		MovieDAO dao=new MovieDAO();
		try {
			
			List<MovieVO> list=dao.selectgenreMovie(movie_genre);	
			 request.setAttribute("list", list);
			 	
		} catch (Exception e) {			
			e.printStackTrace();
		}	
		return "MovieList";
	}

}
