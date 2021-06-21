package movie.model;


//movie_seq          NUMBER(20) NOT NULL,
//movie_picture      VARCHAR2(1000),
//movie_country      VARCHAR2(30) NOT NULL,
//movie_title        VARCHAR2(50) NOT NULL,
//movie_genre        VARCHAR2(30) NOT NULL,
//movie_summary      NVARCHAR2(1000) NOT NULL,
//movie_director     VARCHAR2(30) NOT NULL,
//movie_rate         VARCHAR2(30) NOT NULL,
//movie_actor        VARCHAR2(30) NOT NULL,
//movie_video        VARCHAR2(1000) NOT NULL,
//movie_price        VARCHAR2(30) NOT NULL,
//movie_runtime      VARCHAR2(30) NOT NULL,
//movie_producer     VARCHAR2(30) NOT NULL,
//movie_sdate        VARCHAR2(30) NOT NULL,
//movie_sumaudience  VARCHAR2(30) NOT NULL,
//movie_age          VARCHAR2(30) NOT NULL,
//admin_id           VARCHAR2(30) NOT NULL
public class MovieVO {

	private int movie_seq;
	private String movie_picture;
	private String movie_country;
	private String movie_title;
	private String movie_genre;
	private String movie_summary;
	private String movie_director;
	private String movie_rate;
	private String movie_actor;
	private String movie_video;
	private String movie_price;
	private String movie_runtime;      
	private String movie_producer;     
	private String movie_sdate;        
	private String movie_sumaudience;  
	private String movie_age;          
	private String admin_id;
	
	
	public int getMovie_seq() {
		return movie_seq;
	}
	public void setMovie_seq(int movie_seq) {
		this.movie_seq = movie_seq;
	}
	public String getMovie_picture() {
		return movie_picture;
	}
	public void setMovie_picture(String movie_picture) {
		this.movie_picture = movie_picture;
	}
	public String getMovie_country() {
		return movie_country;
	}
	public void setMovie_country(String movie_country) {
		this.movie_country = movie_country;
	}
	public String getMovie_title() {
		return movie_title;
	}
	public void setMovie_title(String movie_title) {
		this.movie_title = movie_title;
	}
	public String getMovie_genre() {
		return movie_genre;
	}
	public void setMovie_genre(String movie_genre) {
		this.movie_genre = movie_genre;
	}
	public String getMovie_summary() {
		return movie_summary;
	}
	public void setMovie_summary(String movie_summary) {
		this.movie_summary = movie_summary;
	}
	public String getMovie_director() {
		return movie_director;
	}
	public void setMovie_director(String movie_director) {
		this.movie_director = movie_director;
	}
	public String getMovie_rate() {
		return movie_rate;
	}
	public void setMovie_rate(String movie_rate) {
		this.movie_rate = movie_rate;
	}
	public String getMovie_actor() {
		return movie_actor;
	}
	public void setMovie_actor(String movie_actor) {
		this.movie_actor = movie_actor;
	}
	public String getMovie_video() {
		return movie_video;
	}
	public void setMovie_video(String movie_video) {
		this.movie_video = movie_video;
	}
	public String getMovie_price() {
		return movie_price;
	}
	public void setMovie_price(String movie_price) {
		this.movie_price = movie_price;
	}
	public String getMovie_runtime() {
		return movie_runtime;
	}
	public void setMovie_runtime(String movie_runtime) {
		this.movie_runtime = movie_runtime;
	}
	public String getMovie_producer() {
		return movie_producer;
	}
	public void setMovie_producer(String movie_producer) {
		this.movie_producer = movie_producer;
	}
	public String getMovie_sdate() {
		return movie_sdate;
	}
	public void setMovie_sdate(String movie_sdate) {
		this.movie_sdate = movie_sdate;
	}
	public String getMovie_sumaudience() {
		return movie_sumaudience;
	}
	public void setMovie_sumaudience(String movie_sumaudience) {
		this.movie_sumaudience = movie_sumaudience;
	}
	public String getMovie_age() {
		return movie_age;
	}
	public void setMovie_age(String movie_age) {
		this.movie_age = movie_age;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}          
	
	
	
}
