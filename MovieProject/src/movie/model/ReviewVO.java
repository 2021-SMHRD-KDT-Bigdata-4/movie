package movie.model;

public class ReviewVO {

	
	 	private int review_seq; 
	    private String review_contents; 
	    private String review_movie;
	    private String review_date;
	    private int member_seq; 
	    private int movie_seq;
	    private String review_id;
	    
	    
		public int getReview_seq() {
			return review_seq;
		}
		public void setReview_seq(int review_seq) {
			this.review_seq = review_seq;
		}
		public String getReview_contents() {
			return review_contents;
		}
		public void setReview_contents(String review_contents) {
			this.review_contents = review_contents;
		}
		public String getReview_movie() {
			return review_movie;
		}
		public void setReview_movie(String review_movie) {
			this.review_movie = review_movie;
		}
		public String getReview_date() {
			return review_date;
		}
		public void setReview_date(String review_date) {
			this.review_date = review_date;
		}
		public int getMember_seq() {
			return member_seq;
		}
		public void setMember_seq(int member_seq) {
			this.member_seq = member_seq;
		}
		public int getMovie_seq() {
			return movie_seq;
		}
		public void setMovie_seq(int movie_seq) {
			this.movie_seq = movie_seq;
		}
		public String getReview_id() {
			return review_id;
		}
		public void setReview_id(String review_id) {
			this.review_id = review_id;
		}
	    
		
		
}
