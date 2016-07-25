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
		switch (Separator.command.getAction()) {
			case "move":
				DispatcherServlet.send(request, response, Separator.command);
				break;
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
				DispatcherServlet.send(request, response, Separator.command);
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
				DispatcherServlet.send(request, response, Separator.command);
				break;
			case "list":
				request.setAttribute("list", service.list());
				DispatcherServlet.send(request, response, Separator.command);
				break;
			case "update": 
				memBean = (MemberBean) request.getSession().getAttribute("user");
				memBean.setPw(request.getParameter("pw"));
				memBean.setEmail(request.getParameter("email"));
				if(service.update(memBean)==1){
					request.getSession().setAttribute("user", memBean);
				}else{
					Separator.command.setPage("detail");
					Separator.command.setView();
				}
				DispatcherServlet.send(request, response, Separator.command);
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
				DispatcherServlet.send(request, response, Separator.command);
				break;
			case "find_by_id": 
				request.setAttribute("user", service.findById(request.getParameter("keyword")));
				DispatcherServlet.send(request, response, Separator.command);
				break;
			case "find_by_name": 
				request.setAttribute("list", service.findBy(request.getParameter("keyword")));
				DispatcherServlet.send(request, response, Separator.command);
				break;
			case "count": 
				request.setAttribute("cnt", service.count());
				DispatcherServlet.send(request, response, Separator.command);
				break;
			case "logout":	
				Separator.command.setDirectory("home");
				Separator.command.setView();
				request.getSession().invalidate();
				DispatcherServlet.send(request, response, Separator.command);
				break;
			default:
				break;
		}
	}	
}
