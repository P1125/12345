package co.micol.minipro.member.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.minipro.common.EmployeeVo;
import co.micol.minipro.common.Paging;
import co.micol.minipro.common.Service;
import co.micol.minipro.member.dao.MemberDao;

public class PagingTest implements Service {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		MemberDao dao = new MemberDao();
		String pageNo = request.getParameter("pageNo");
		int pg = Integer.parseInt(pageNo);
		Paging Paging = new Paging();
		
		Paging.setPageNo(pg);
		Paging.setPageSize(10);
		Paging.setTotalCount(dao.getTotalCnt());
		System.out.println(Paging);
		
		dao = new MemberDao();
		List<EmployeeVo> list = dao.getPagingList(pg);
		request.setAttribute("list", list);
		request.setAttribute("params", Paging);
		
		
		return "views/main/main.jsp";
	}

}
