package serv;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FindName
 */
public class FindName extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindName() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//id 파라미터에 해당하는 이름을 검색하여 리턴한다.
		// 일부러 에러나게 하기 int a = 5/0;
		try {
			Thread.sleep(2000); //2초대기
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		response.setContentType("text/html; charset=utf-8");
		String id = request.getParameter("userid");// 넘겨주는값, 이름 같아야한다
		if(id.equals("admin")) {
			response.getWriter().append("관리자");
		}else {
			response.getWriter().append("사용자");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
