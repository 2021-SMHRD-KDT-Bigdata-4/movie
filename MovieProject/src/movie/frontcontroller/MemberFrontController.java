package movie.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import movie.web.Controller;

@WebServlet("*.go") 
public class MemberFrontController extends HttpServlet {
   protected void service(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
	   Controller controller=null;
		  String view=null;
		  
		  //------------------------------------------
		  request.setCharacterEncoding("utf-8");		
		  String reqUrl=request.getRequestURI();		
		  String cpath=request.getContextPath(); 
		  //System.out.println(cpath);
		  String command=reqUrl.substring(cpath.length());
		  //System.out.println(command);
		  
		  //------------------------------------------
		  HandlerMapping mappings =new HandlerMapping();
		  controller = mappings.getController(command);		 
		  
		  //-----------------------------------------		  
		  view=controller.requestHandler(request, response);
		  System.out.println(view);
		  if(view!=null) {  
			if(view.indexOf("redirect:/")!=-1) {
				response.sendRedirect(view.split(":/")[1]); 
			}else {
				RequestDispatcher rd=request.getRequestDispatcher(ViewResolver.makeUrl(view)); 
		        rd.forward(request, response);
			}
		  }		  
	}
}