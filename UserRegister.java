package assignment3;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserRegister
 */
@WebServlet("/UserRegister")
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con;
	PreparedStatement pr;
	PreparedStatement ch;
	ResultSet rs;
	Statement st;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out = response.getWriter();
		String strStatus = "Username is available";
		try
		{
			String url = "jdbc:mysql://localhost:3306/mvcdb";
			String user = "root";
			String pass = "wonyunnaA9881!";	
			
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			con=DriverManager.getConnection(url, user, pass);
			
			String bu = request.getParameter("bu");
			 
			String useName;
			String passwd;
			String fName;
			String lName;
			String address;
			String city;
			String code;
			
			
			if(bu.equals("ID CHECK"))
			{	
				try 
				{
					useName = request.getParameter("useName"); 
	
					String strQuery = "SELECT * FROM customers WHERE useName='" + useName +"'";
					PreparedStatement ps=con.prepareStatement(strQuery);
            
					ResultSet rs = ps.executeQuery(strQuery);
            
					boolean userExists = rs.next();
					if (userExists)
					{
						strStatus = "Username already exists"; // Return Exist Msg
					}
				}catch(Exception e)
				{
					strStatus = "Some error occured. Try again"; // Return Err Msg
					e.printStackTrace();
				}
				out.println(strStatus);						
			}
			
			if(bu.equals("REGISTER"))
			{
//				if(request.getParameter("useName") != null 
//					&& request.getParameter("passwd") != null
//					&& request.getParameter("fName") != null
//					&& request.getParameter("lName") != null
//					&& request.getParameter("address") != null
//					&& request.getParameter("city") != null
//					&& request.getParameter("code") != null)
//				{   
					useName=request.getParameter("useName");
					passwd = request.getParameter("passwd");
					fName = request.getParameter("fName");
					lName = request.getParameter("lName");
					address = request.getParameter("address");
					city = request.getParameter("city");
					code = request.getParameter("code");				
					try
					{
						String addQuery = "INSERT INTO customers"
						+ "(useName, password, firstname, lastname, address, city, postalCode)"
						+ " VALUE (?,?,?,?,?,?,?)";

						pr = con.prepareStatement(addQuery);
					
						pr.setString(1, useName);
						pr.setString(2, passwd);
						pr.setString(3, fName);
						pr.setString(4, lName);
						pr.setString(5, address);			
						pr.setString(6, city);
						pr.setString(7, code);	
						
						int i = pr.executeUpdate();
						
						if(i != 0)
						{
							RequestDispatcher rd = request.getRequestDispatcher("LoginSecond.jsp");
							rd.forward(request, response);
							out.close();
						}
					}catch(Exception e)
					{
						strStatus = "Some error occured. Try again"; // Return Err Msg
						e.printStackTrace();
					}
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
	
	
	private boolean isNullOrBlank(final String s) {
	    return s == null || s.trim().length() == 0;
	}

}

