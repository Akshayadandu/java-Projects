package com.set.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.set.model.UserModel;

public class UserDao {
	String DB_DRIVER = "com.mysql.cj.jdbc.Driver";
	String DB_URL = "jdbc:mysql://localhost:3306/userData";
	String DB_USERNAME = "root";
	String DB_PASSWORD = "root";
	public Connection getcon() throws Exception{
		Class.forName(DB_DRIVER);
		return DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
	
	}

	public void insertUser(UserModel user) throws Exception {
		String insert= "insert into userinfo(Firstname,Lastname,phoneno,email) values(?,?,?,?)";
		try (
			Connection con=getcon();
			PreparedStatement ps =con.prepareStatement(insert);
		){
			
			ps.setString(1, user.getFirstName());
			ps.setString(2, user.getLastName());
			ps.setString(3, user.getPhoneno());
			ps.setString(4, user.getEmail());
			
			ps.executeUpdate();
		}
catch(Exception e) {
	e.printStackTrace();
}
		
	}
public List<UserModel> getAllUsers() {
	List<UserModel> list=new ArrayList<>();
	String select="select*from userinfo";
	try(
		Connection con=getcon();
			PreparedStatement ps=con.prepareStatement(select);
			ResultSet rs=ps.executeQuery()
			){
			while(rs.next()) {
				UserModel um=new UserModel(rs.getInt("id"),
						rs.getString("Firstname"),
						rs.getString("Lastname"),
						rs.getString("phoneno"),
						rs.getString("email"));
				list.add(um);
				
			}
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return list;

}
}
