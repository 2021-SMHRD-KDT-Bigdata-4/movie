package movie.model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class MemberDAO {
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
	
	public MemberVO loginMember(MemberVO vo) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		vo = sqlSession.selectOne("loginMember", vo);
		return vo;
	}
	public int signupMember(MemberVO vo) {
		System.out.println("확인용 : "+vo.getMember_id());
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int cnt = sqlSession.insert("signupMember", vo);
		sqlSession.commit(); // 완료
		sqlSession.close(); // 반납
		return cnt;
	}
	public int updateMember(MemberVO vo) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int cnt = sqlSession.update("updateMember", vo);
		sqlSession.commit(); // 완료
		sqlSession.close(); // 반납
		return cnt;
	}
	public int deleteMember(int member_seq) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int cnt = sqlSession.delete("deleteMember", member_seq);
		sqlSession.commit(); // 완료
		sqlSession.close(); // 반납
		return cnt;
	}

}
