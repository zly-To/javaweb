package swu.zly.test;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.*;

public class login extends HttpServlet {

	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		System.out.println(req.getContextPath());
	
		String user = req.getParameter("user");
		String pass = req.getParameter("pass");
		try{
			System.out.println(new String(user.getBytes("ISO-8859-1"), "UTF-8"));
		} catch(Exception e) {
			System.out.println("encoding error");
		}
		System.out.println(pass);
		System.out.println("test");
		PrintWriter out=resp.getWriter();
	       out.print("user:"+user+"   "+"password:"+pass);
	}


	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		doPost(req, resp);
	}
}