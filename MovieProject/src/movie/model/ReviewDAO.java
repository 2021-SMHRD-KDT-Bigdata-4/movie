package movie.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class ReviewDAO {
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
	
			
		public int ReviewInsert(ReviewVO vo)  {
			SqlSession sqlSession  =sqlSessionFactory.openSession();	
		int cnt=sqlSession.insert("ReviewInsert",vo);
		sqlSession.commit();//완료
		sqlSession.close();//반납
		return cnt;
				
	}
		
		public List<ReviewVO> reviewList(int movie_seq){
			SqlSession sqlSession  =sqlSessionFactory.openSession();
		List<ReviewVO> list=sqlSession.selectList("reviewList",movie_seq);
		sqlSession.close();//반납
		return list;	
		}	
		
}
