package RequestResponse;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String DB_DRIVER = "com.mysql.cj.jdbc.Driver";
	String DB_URL = "jdbc:mysql://localhost:3306/movieapp";
	String DB_USERNAME = "root";
	String DB_PASSWORD = "root";

	public Connection getcon() throws Exception {
		Class.forName(DB_DRIVER);
		Connection con = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
		return con;
	}

	public UserServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		try (Connection con = getcon();
				Statement s = con.createStatement();
				ResultSet rs = s.executeQuery("SELECT * FROM movie")) {
			StringBuilder movieList = new StringBuilder();

			while (rs.next()) {

				int id = rs.getInt(1);
				String movie_name = rs.getString(2);
				int movie_runtime = rs.getInt(3);
				String movie_casting = rs.getString(4);
				int movie_rating = rs.getInt(5);

				movieList.append("<tr>");
				movieList.append("<td>").append(id).append("</td>");
				movieList.append("<td>").append(movie_name).append("</td>");
				movieList.append("<td>").append(movie_runtime).append("</td>");
				movieList.append("<td>").append(movie_casting).append("</td>");
				movieList.append("<td>").append(movie_rating).append("</td>");
				movieList.append("</tr>");
			}

			String responseStr = "<html>" 
						+ "<body>" 
						+ "<h2>Movie List</h2>"
						+ "<table border='1'>" 
						+ "<tr>"
						+ "<th>id</th>" 
						+ "<th>movie_name</th>" 
						+ "<th>movie_runtime</th>" 
						+ "<th>movie_casting</th>"
						+ "<th>movie_rating</th>" 
						+ "</tr>" + movieList 
						+ "</table>" 
						+ "</body>" 
						 + "</html>";

			out.print(responseStr);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		try(Connection con=getcon()){
			
			String query="insert into movie(name,movie_runtime,movie_casting,movie_rating VALUES(?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(query);
			
	        ps.setString(1, request.getParameter("name"));
	        ps.setInt(2, Integer.parseInt(request.getParameter("movieruntime")));
	        ps.setString(3, request.getParameter("moviecasting"));
	        ps.setString(4, request.getParameter("movierating"));
			
			int list=ps.executeUpdate();
			
			if(list>0) {
				System.out.println("insertion done");
			}
			else {
				System.out.println("not done");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		 response.sendRedirect("UserServlet");
	}

}

		
				
				
				
		
