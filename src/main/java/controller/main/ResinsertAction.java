package controller.main;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.common.Action;
import controller.common.ActionForward;
import model.restaurant.ResDAO;
import model.restaurant.ResVO;

public class ResinsertAction implements Action {

	// 식당 등록
	//	static final String resInsert = "insert into restaurant (resId,resName,resAvg,resAdd,resPhone,resCategory,resPic)"
	//			+" values ((select nvl(max(resId),1000)+1 from restaurant),?,?,?,?,?,?)";
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ActionForward forward=null;
		ResDAO resDAO=new ResDAO();
		ResVO rvo=new ResVO();
		rvo.setResName((String)request.getAttribute("resName"));
		rvo.setResAvg(Double.parseDouble("0.0")); // 더블 형변환하였음
		rvo.setResAdd((String)request.getAttribute("resAdd")); // 주소
		rvo.setResPhone((String)request.getAttribute("resPhone"));
		rvo.setResCategory((String)request.getAttribute("resCategory"));
		rvo.setResPic((String)request.getAttribute("resPic"));
		HttpSession session = request.getSession();
		rvo.setMemId((String)session.getAttribute("memberid"));
		

		
		if(resDAO.resInsert(rvo)) {
			forward=new ActionForward();
			forward.setPath("main.do"); // 식당 등록을 마치면 메인으로 이동
			forward.setRedirect(true);
		}

		return forward;
	}
}