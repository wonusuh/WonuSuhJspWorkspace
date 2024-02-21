package kr.basic.model;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MemberDAO {
	private MemberDAO() {
	}

	static private MemberDAO instance = new MemberDAO();

	static public MemberDAO getInstance() {
		return instance;
	}

	private static SqlSessionFactory sqlSessionFactory;
	static { // 무조건 한 번 실행된다.
		try {
			String resource = "kr/basic/mybatis/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public List<MemberVO> memberList() {
		SqlSession session = sqlSessionFactory.openSession();
		List<MemberVO> list = session.selectList("memberList");
		session.close();
		return list;
	}

	// 회원저장 동작
	public int memberInsert(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt = session.insert("memberInsert", vo); // 성공하면 1, 실패하면 0
		session.commit();
		session.close();
		return cnt;
	}

	public String checkMemberId(String id) {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt = session.selectOne("isValidId", id);
		return cnt == 0 ? "valid" : "notValid";
	}

	public int getMemberNo(String id) {
		return 0;
	}

	public int memberDelete(String id) {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt = session.delete("memberDelete", id);
		session.commit();
		session.close();
		return cnt;
	}

	public MemberVO memberContent(int num) {
		return null;
	}

	public int memberUpdate(MemberVO vo) {
		return 0;
	}
}
