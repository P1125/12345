package emp.serv;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import emp.DeptDAO;
import emp.DeptVO;
import emp.EmpDAO;
import emp.EmpVO;
import emp.JobDAO;
import emp.JobVO;

/**
 * Servlet implementation class EmpUpdate
 */
public class EmpUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmpUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }
    // 수정페이지 이동
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<JobVO> jobList = JobDAO.getInstance().selectAll();
		List<DeptVO> deptList = DeptDAO.getInstance().selectAll();
		request.setAttribute("jobList", jobList);
		request.setAttribute("deptList", deptList);
		
		//수정할 사원정보를 단건조회해서 넘겨준다.
		String empid = request.getParameter("employee_id");
		EmpVO empVO = EmpDAO.getInstance().selectOne(empid);
		request.setAttribute("empVO", empVO);
		
		
		request.getRequestDispatcher("/emp/empInsert.jsp")  //차이는 수정 단건조회 드옥은 그냥 넘어감 수정차이가 있냐없냐
		.forward(request, response);
	}

	// 등록/수정처리 같이가능 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 파라미터 vo담기
		String empid = request.getParameter("employee_id");
	}

}
