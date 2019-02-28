package org.tpw.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.tpw.helpers.Helper;
import org.tpw.models.User;

public class UserDao {
	
	public ArrayList<User> getAllUsers() throws SQLException {
		ArrayList<User> users = new ArrayList<User>();
		String sql = "SELECT * FROM users";
		PreparedStatement preparedStatement = Helper.getConnection().prepareStatement(sql);
		ResultSet resultSet = preparedStatement.executeQuery();
		while(resultSet.next()) {
			User user = new User();
			user.setId(resultSet.getInt("id"));
			user.setCin(resultSet.getString("cin"));
			user.setFirstName(resultSet.getString("first_name"));
			user.setLastName(resultSet.getString("last_name"));
			user.setEmail(resultSet.getString("email"));
			user.setPassword(resultSet.getString("password"));
			users.add(user);
		}
		return users;
	}
}
