package movie.frontcontroller;

import java.util.HashMap;

import movie.web.Controller;
import movie.web.LoginController;
import movie.web.LogoutController;
import movie.web.MainController;
import movie.web.MovieOneSelectController;
import movie.web.MovieSelectController;
import movie.web.SignupController;
import movie.web.UpdateController;

public class HandlerMapping {
	private HashMap<String,Controller> mappings;

	public HandlerMapping() {
		mappings =new HashMap<String, Controller>();
		mappings.put("/login.go", new LoginController());
		mappings.put("/logout.go", new LogoutController());
		mappings.put("/signup.go", new SignupController());
		mappings.put("/update.go", new UpdateController());		
		mappings.put("/main.go", new MainController());
		mappings.put("/search.go", new MovieSelectController());
		mappings.put("/detail.go", new MovieOneSelectController());
		
	}

	public Controller getController(String command) {
		return mappings.get(command);
	}
}
