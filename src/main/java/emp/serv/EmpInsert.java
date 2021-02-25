package emp.serv;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.DateUtil;
import emp.DeptDAO;
import emp.DeptVO;
import emp.EmpDAO;
import emp.EmpVO;
import emp.JobDAO;
import emp.JobVO;

public class EmpInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public EmpInsert() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<JobVO> jobList = JobDAO.getInstance().selectAll();
		List<DeptVO> deptList = DeptDAO.getInstance().selectAll();
		request.setAttribute("jobList", jobList);
		request.setAttribute("deptList", deptList);
		request.getRequestDispatcher("/emp/empInsert.jsp")
		.forward(request, response); //앞에서 넘겨받은 request정보를 다음페이지까지 전달해준다.(forward)
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String hire_date = request.getParameter("hire_date");
		//builder 객체생성과 초기화
//		EmpVO empVO = EmpVO.builder() //객체 생성과 초기화를 한번에 해주는게 builder
//						.commission_pct(request.getParameter("commission_pct"))
//						.department_id(request.getParameter("department_id"))
//						.email(request.getParameter("email"))
//						.employee_id(request.getParameter("employee_id"))
//						.hire_date(DateUtil.toDate(hire_date)) // 파일이든건 sql 넘겨주는건 util데이터라 타입변환 유틸데이터 상속받아 sql데이터가
//						.build();
//		EmpDAO.getInstance().insert(empVO);
//		request.getRequestDispatcher("EmpList").forward(request, response);
		response.sendRedirect("EmpList"); // 돌아가는 서블릿주소
		
		
		
		//	forward와 redirect차이점
		
		
	}

}
