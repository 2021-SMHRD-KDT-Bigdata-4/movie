package movie.frontcontroller;

import java.util.HashMap;

import movie.web.Controller;
import movie.web.LoginController;
import movie.web.LogoutController;
import movie.web.MainController;
import movie.web.MovieOneSelectController;
import movie.web.MovieRevieGenreController;
import movie.web.MovieReviewController;
import movie.web.MovieReviewDeleteController;
import movie.web.MovieSelectController;
import movie.web.Moviefilter2Controller;
import movie.web.Moviefilter3Controller;
import movie.web.MoviefilterController;
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
		mappings.put("/review.go", new MovieReviewController());
		mappings.put("/delete.go", new MovieReviewDeleteController());
		mappings.put("/genre.go", new MovieRevieGenreController());
		mappings.put("/filter.go", new MoviefilterController());
		mappings.put("/filter2.go", new Moviefilter2Controller());
		mappings.put("/filter3.go", new Moviefilter3Controller());

		

	}

	public Controller getController(String command) {
		return mappings.get(command);
	}
}
