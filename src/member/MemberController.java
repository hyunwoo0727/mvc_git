package member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet({"/member/main.do","/member/regist.do","/member/login.do",
	"/member/list.do","/member/update.do","/member/count.do","/member/delete.do"
	,"/member/detail.do","/member/find_by_id.do","/member/find_by.do","/member/logout.do"})
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getServletPath();
		String result = path.substring(path.lastIndexOf("/")+1, path.indexOf("."));
		path = path.split("/")[1];
		RequestDispatcher dis 
		 = request.getRequestDispatcher("/WEB-INF/"+path+"/"+result+".jsp");
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
