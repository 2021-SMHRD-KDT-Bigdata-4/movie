package movie.frontcontroller;

public class ViewResolver {
	public static String makeUrl(String view) {

		return "/"+view+".jsp";

	}
}
