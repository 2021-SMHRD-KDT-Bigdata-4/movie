package movie.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import movie.model.MovieDAO;
import movie.model.MovieVO;



public class MovieSelectController implements Controller {
/*	
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String movie_title=request.getParameter("movie_title");	
		MovieDAO dao =new MovieDAO();
		List<MovieVO> list =dao.selectMovie(movie_title);
		// Gson API
		Gson g =new Gson();
		String MList=g.toJson(list);
		response.setContentType("test/json;charset=euc-kr");
		PrintWriter out = response.getWriter();
		out.println(MList);
		return null;
	}
*/
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String movie_title=request.getParameter("movie_title");		
		
		MovieDAO dao=new MovieDAO();
		try {
			List<MovieVO> list=dao.selectMovie(movie_title);	
			 request.setAttribute("list", list);
		
		} catch (Exception e) {			
			e.printStackTrace();
		}	
		return "MovieList";
	}


}
