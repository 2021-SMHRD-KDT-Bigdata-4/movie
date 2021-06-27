package movie.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import movie.model.MovieDAO;
import movie.model.MovieVO;

public class MoviefilterController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println(1);
		MovieDAO dao=new MovieDAO();
		try {
			List<MovieVO> list=dao.MovieList();	
			 request.setAttribute("list", list);
		System.out.println(list.get(0).getMovie_age());
		System.out.println(list.get(2).getMovie_seq());
		} catch (Exception e) {			
			e.printStackTrace();
		}	
		return "filter";
	}
}
