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
	
	public List<MovieVO> selectMovie(String movie_title) {

		SqlSession sqlSession  =sqlSessionFactory.openSession();
		List<MovieVO> list=sqlSession.selectList("selectMovie",movie_title);
		sqlSession.close();//반납
		return list;
    }


	}

