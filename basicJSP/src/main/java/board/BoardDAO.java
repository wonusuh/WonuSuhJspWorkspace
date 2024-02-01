package board;

import java.time.LocalDate;
import java.util.ArrayList;

public class BoardDAO {
	public int cnt;
	public ArrayList<BoardVO> postList;

	public BoardDAO() {
		postList = new ArrayList<BoardVO>();
		init();
	}

	private void init() {
		for (int i = 0; i < 3; i += 1) {
			BoardVO post = new BoardVO();
			post.setNo(++this.cnt);
			post.setWriter("작성자" + this.cnt);
			LocalDate nowDate = LocalDate.now();
			String nowDateString = nowDate.toString();
			post.setRegDate(nowDateString);
			post.setSubject("제목" + this.cnt);
			post.setContents("내용" + this.cnt);
			postList.add(post);
		}
	}

	public void deleteAPost(int idx) {
		postList.remove(idx);
	}
}
