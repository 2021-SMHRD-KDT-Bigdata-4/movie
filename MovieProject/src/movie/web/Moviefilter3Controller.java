package movie.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import movie.model.MovieDAO;
import movie.model.MovieVO;

public class Moviefilter3Controller implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("euc-kr");
		PrintWriter out = response.getWriter();
		
		String result = request.getParameter("result");
		
		String filter[] = result.split(",");
		
		MovieDAO dao=new MovieDAO();
		try {
				
			List<MovieVO> list = new ArrayList<MovieVO>();
			for(int i =0; i<filter.length; i++) {
				list.add(dao.filtering(filter[i]));
				
			}
			System.out.println(list.get(3).getMovie_director());
			 request.setAttribute("list", list);
			 
			 
		
		} catch (Exception e) {			
			e.printStackTrace();
		}	
		
		
		return "Main";
	}

}
