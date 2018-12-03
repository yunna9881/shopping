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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con;
	PreparedStatement pr;
	ResultSet rs;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
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
			String url = "";
			String user = "";
			String pass = "";	
			
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		
			String userName = request.getParameter("userName");
			String password = request.getParameter("password");

			
			con=DriverManager.getConnection(url, user, pass);
			System.out.println(con);
			pr=con.prepareStatement("select * from csr where userName=? and password=?");		
		
			
			pr.setString(1, userName);
			pr.setString(2, password);
			rs=pr.executeQuery();
			
			
			
			if(rs.next())
			{

				LoginNamePrint info = new LoginNamePrint();
				info.setId(userName);
				info.setPasswd(password);
				HttpSession session=request.getSession(); /////////
				session.setAttribute("information", info); //////////
				request.setAttribute("information", info); 

				
				RequestDispatcher rd = request.getRequestDispatcher("WelcomeAdmin.jsp");
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
