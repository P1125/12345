package emp.serv;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import emp.EmpDAO;
import emp.EmpVO;


public class EmpList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
     public EmpList() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<EmpVO> list = EmpDAO.getInstance().selectList(); // db조회결과를
		
		request.setAttribute("list", list);  // list속성으로 담아서 view에서 출력하기위해
		request.getRequestDispatcher("/emp/list.jsp") // emp list에서  list를읽어 출력
			   .forward(request, response);  //전달
		
		//System.out.println(list);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
