package member;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import global.DispatcherServlet;
import global.Separator;


@WebServlet({"/member.do"})
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Separator.init(request, response);
		MemberService service = MemberServiceImpl.getInstance();
		MemberBean memBean = new MemberBean();
		List<?> list = new ArrayList<MemberBean>();
		switch (Separator.command.getAction()) {
			case "login": 
				memBean.setId(request.getParameter("id"));
				memBean.setPw(request.getParameter("pw"));
				memBean = service.login(memBean);
				if(memBean!=null){
					Separator.command.setDirectory(request.getParameter("directory"));
					request.getSession().setAttribute("user", memBean);
				}else{
					Separator.command.setPage("login");
				}
				Separator.command.setView();
				break;
			case "regist":	 
				memBean.setRegDate();
				memBean.setId(request.getParameter("id"));
				memBean.setPw(request.getParameter("pw"));
				memBean.setName(request.getParameter("name"));
				memBean.setSsn(request.getParameter("ssn"));
				memBean.setProfileImg("default.jpg");
				memBean.setEmail(request.getParameter("email"));
				memBean.setPhone(request.getParameter("phone"));
				if(service.regist(memBean)!=1){
					Separator.command.setPage("regist");
					Separator.command.setView();
				}
				break;
			case "list":
				list = service.list();
				request.setAttribute("list", list);
				break;
			case "update": 
				memBean.setId(request.getParameter("id"));
				memBean.setPw(request.getParameter("pw"));
				memBean.setEmail(request.getParameter("email"));
				if(service.update(memBean)==1){
					request.getSession().setAttribute("user", memBean);
				}else{
					Separator.command.setPage("detail");
					Separator.command.setView();
				}
				break;
			case "detail":
				String id = request.getParameter("id");
				if(id!=null){
					request.setAttribute("user", service.findById(id));
				}
				break;
			case "delete":
				memBean.setId(request.getParameter("id"));
				memBean.setPw(request.getParameter("pw"));
				if(service.delete(memBean)==1){
					Separator.command.setDirectory(request.getParameter("directory"));
					request.getSession().invalidate();
				}else{
					Separator.command.setPage("delete");
				}
				Separator.command.setView();
				break;
			case "find_by": 
				list = service.findBy(request.getParameter("word"));
				request.setAttribute("list", list);
				break;
			case "count": 
				request.setAttribute("cnt", service.count());
				break;
			case "logout":	
				Separator.command.setDirectory("home");
				Separator.command.setView();
				request.getSession().invalidate();
				break;
			default:
				break;
		}
		DispatcherServlet.send(request, response, Separator.command);
	}	
}
