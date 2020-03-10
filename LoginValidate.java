import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginValidate")
public class LoginValidate extends HttpServlet 
{
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String UserName=request.getParameter("username");
		String Password=request.getParameter("password");
		//out.println("Username :"+UserName);
		//out.println("<br>Pass:"+Password);
		DBConnection d=new DBConnection();
		if(d.verify(UserName, Password))
		{
			RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");
			rd.forward(request, response);
		}
		else
		{
			out.println("<b><center>Username or Password is Wrong Please Retry</center></b>");
			RequestDispatcher rd=request.getRequestDispatcher("index.html");
			rd.include(request, response);
		}
	}
}
