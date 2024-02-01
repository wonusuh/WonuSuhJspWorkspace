package gugudan;

import java.util.ArrayList;
import java.util.Random;

public class GugudanDAO {
	public int count, score;
	ArrayList<GugudanVO> quiz;

	public GugudanDAO() {
		quiz = new ArrayList<GugudanVO>();
		makeQuiz();
		count = 1;
	}

	private void makeQuiz() {
		Random rn = new Random();
		for (int i = 0; i < 5; i += 1) {
			GugudanVO vo = new GugudanVO(rn.nextInt(8) + 2, rn.nextInt(9) + 1);
			quiz.add(vo);
		}
	}

	public boolean checkAnswer(String input) {
		int answer = Integer.parseInt(input);
		GugudanVO vo = quiz.get(count);
		if (answer == vo.getNum1() * vo.getNum2()) {
			return true;
		}
		return false;
	}

	public String getQuiz() {
		return quiz.get(count).toString();
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public void setQuiz(ArrayList<GugudanVO> quiz) {
		this.quiz = quiz;
	}
}
