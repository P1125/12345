package co.micol.minipro.member.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.minipro.common.EmployeeVo;
import co.micol.minipro.common.Service;
import co.micol.minipro.member.dao.MemberDao;

public class CursorType implements Service{

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		MemberDao dao = new MemberDao();
		EmployeeVo resultVo = dao.getSalaryInfo(101, 55555);
		
		request.setAttribute("vo", resultVo);
		
		return "views/main/main.jsp";
	}

}
