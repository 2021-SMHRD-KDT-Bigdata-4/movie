package movie.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MovieDAO {

	private static SqlSessionFactory sqlSessionFactory;
	static
	{
		try {
			String resource = "movie/mybatis/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<MovieVO> selectMovie(MovieVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		//검색 결과가 아예 없을수도 있고 정확히 몇개인지 모르니 List로 받는다.
		List<MovieVO> list = null;
		list = session.selectList("selectMovie", vo);
		session.close();
		return list;


	}
}
