package emp.serv;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import emp.EmpDAO;
import emp.EmpVO;

/**
 * Servlet implementation class EmailCheck
 */
public class EmailCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EmailCheck() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//email 파라미터 받기
		// empdao 가서 단건조회 만들기
		
		
		//xml 타입
		String email = request.getParameter("email");
		EmpVO empVO = EmpDAO.getInstance().selectOneByEmail(email); // ""이아니라 String변수  email을 넣어야 한다.
				
		
		response.setContentType("text/xml;charset=UTF-8");
		if(empVO == null) {
			response.getWriter().append("<email>")
								.append("true")
								.append("</email>");
		}else {

			response.getWriter().append("<email>")
								.append("false")
								.append("</email>");
		}
		
	/* json
		response.setContentType("text/html;charset=UTF-8");
		String id = request.getParameter("email");
		EmpVO empVO = EmpDAO.getInstance().selectOneByEmail("email");

		Gson gson = new Gson();
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		if(empVO != null) {
			map.put("email", true);
			response.getWriter().print(gson.toJson(map) );
		}else {
			map.put("email", false);
			map.put("emp", empVO);
			response.getWriter().print(gson.toJson(map) );
			
			
		}*/
	}



}
