package assignment3;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con;
	PreparedStatement pr;
	ResultSet rs;
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out = response.getWriter();

		try
		{
			String url = "jdbc:mysql://localhost:3306/mvcdb";
			String user = "root";
			String pass = "";	
			
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		
			String useName = request.getParameter("useName");
			String passwd = request.getParameter("passwd");

			
			con=DriverManager.getConnection(url, user, pass);
			System.out.println(con);
			pr=con.prepareStatement("select * from customers where useName=? and password=?");		
		
			
			pr.setString(1, useName);
			
			pr.setString(2, passwd);
			rs=pr.executeQuery();
			
			
			
			if(rs.next())
			{

				LoginNamePrint info = new LoginNamePrint();
				info.setId(useName);
				info.setPasswd(passwd);
				request.setAttribute("information", info);

				
				RequestDispatcher rd = request.getRequestDispatcher("Welcome.jsp");
				rd.forward(request, response);
			
			
			}else {
				out.println(request.getAttribute("errorMessage"));
				out.print("noooooooooo");
				 //the following will keep users in the login page
				 RequestDispatcher rd = request.getRequestDispatcher("LoginSecond.jsp");
				 rd.forward(request, response); 
			}
	

		
		}catch(Exception e)
		{
			e.printStackTrace();
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