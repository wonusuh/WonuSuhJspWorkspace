package kr.basic.frontcontroller;

import java.util.HashMap;

import kr.basic.controller.Controller;
import kr.basic.controller.MemberContentController;
import kr.basic.controller.MemberDeleteController;
import kr.basic.controller.MemberInsertController;
import kr.basic.controller.MemberListController;
import kr.basic.controller.MemberUpdateController;
import kr.basic.controller.MemberUploadImgController;
import kr.basic.controller.ValidIdAjaxController;
import kr.basic.controller.memberLoginController;
import kr.basic.controller.memberLogoutController;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;

	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/memberList.do", new MemberListController());
		mappings.put("/memberInsert.do", new MemberInsertController());
		mappings.put("/memberContent.do", new MemberContentController());
		mappings.put("/memberUpdate.do", new MemberUpdateController());
		mappings.put("/memberDelete.do", new MemberDeleteController());
		mappings.put("/memberLogin.do", new memberLoginController());
		mappings.put("/memberLogout.do", new memberLogoutController());
		mappings.put("/vaildIdAjax.do", new ValidIdAjaxController());
		mappings.put("/vaildIdAjax.do", new ValidIdAjaxController());
		mappings.put("/memberUploadImg.do", new MemberUploadImgController());
	}

	public Controller getController(String key) {
		return mappings.get(key);
	}
}
