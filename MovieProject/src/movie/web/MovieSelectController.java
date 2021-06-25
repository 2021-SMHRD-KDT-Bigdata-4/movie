package movie.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import movie.model.MovieDAO;
import movie.model.MovieVO;



public class MovieSelectController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String movie_title = (request.getParameter("movie_title"));
		// BoardDAO dao = new BoardDAO();
		MovieDAO dao = new MovieDAO();
		MovieVO VO = dao.selectMovie(movie_title);
		// VO =>json : { }
		Gson g = new Gson();
		String data = g.toJson(VO);
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out = response.getWriter();
		out.println(data);
		
		
		return null;
	}

}
