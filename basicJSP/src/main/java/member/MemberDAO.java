package member;

import java.util.ArrayList;

public class MemberDAO {
	public ArrayList<Member> memberList = new ArrayList<Member>();

	public int checkIdPw(String id, String pw) {
		int idx = -1;
		for (int i = 0; i < memberList.size(); i += 1) {
			if (id.equals(memberList.get(i).getId())) {
				System.out.println(memberList.get(i).getId());
				idx = i;
				break;
			}
		}
		if (idx != -1 && memberList.get(idx).getPw().equals(pw)) {
			return idx;
		}
		return -1;
	}

	public void deleteAMember(int idx) {
		if (idx != 0)
			memberList.remove(idx);
	}

	public int getIdxById(String id) {
		for (int i = 0; i < memberList.size(); i += 1) {
			if (memberList.get(i).getId().equals(id))
				return i;
		}
		return -1;
	}

	public void addAMember(String id, String pw, String name, String gender) {
		Member mem = new Member();
		mem.setId(id);
		mem.setPw(pw);
		mem.setName(name);
		mem.setGender(gender);
		memberList.add(mem);
	}

	public void updateAMember(int idx, String name, String gender) {
		memberList.get(idx).setName(name);
		memberList.get(idx).setGender(gender);
	}
}
