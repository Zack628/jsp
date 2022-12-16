package exercise3_2022_2023_8150105;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/** import com.mysql.jdbc.PreparedStatement; **/


/**
 * UserDAO provides all the necessary methods related to users.
 * 
 * @author 
 *
 */
public class UserDAO {
		
	/**
	 * This method returns a List with all Users
	 * 
	 * @return List<User>
	 */
	public List<User> getUsers() throws Exception {
				
		
		Connection con = null;
		DB db = new DB();
		String sqlQuery = "SELECT * FROM users_ex3_8150105_2022_2023;";
		PreparedStatement stmt = null;

		List<User> users =  new ArrayList<User>();

		try {

			con = db.getConnection(); //get Connection

			stmt = con.prepareStatement(sqlQuery);
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				users.add( new User(rs.getString("firstname"), rs.getString("lastname"), rs.getString("email"), rs.getString("username"), rs.getString("password")) );
			}

			rs.close();
			stmt.close();
			db.close(); // closing connection
			return users; //return the list of users

		} catch (Exception e) {

			throw new Exception("An error occured while getting users from database: " + e.getMessage());
		} finally {
			try {
				db.close();
			} catch (Exception e) {
				throw new Exception(e.getMessage());
			}


		}
		//  1 A
	} //End of getUsers

	/**
	 * Search user by username
	 * 
	 * @param username, String
	 * @return User, the User object or null
	 * @throws Exception
	 */
	public User findUser(String username) throws Exception {
		

		//  1 B
		Connection con = null;
		DB db = new DB();
		PreparedStatement stmt2 = null;
		String sqlQuery = "SELECT * FROM users_ex3_8150105_2022_2023 WHERE username=?;";


		try {

		    con = db.getConnection();
			stmt2 = con.prepareStatement(sqlQuery);
			ResultSet rs = stmt2.executeQuery();
			User user = null;

			if ( rs.next() ) {
				user = new User(rs.getString("firstname"), rs.getString("lastname"), rs.getString("email"), rs.getString("username"), rs.getString("password"));
			}
            
			rs.close();
			stmt2.close();
			db.close();
			return user;
		} catch (Exception e) {

			throw new Exception(e.getMessage());
		} finally {
			try {
				db.close();
			} catch (Exception e) {
				throw new Exception(e.getMessage());
			}

		}

		
		
		
	} //End of findUser

	/**
	 * This method is used to authenticate a user.
	 * 
	 * @param username, String
	 * @param password, String
	 * @return User, the User object
	 * @throws Exception, if the credentials are not valid
	 */
	public User authenticate(String username, String password) throws Exception {
		
			
		//  1 C
		Connection con = null;
		DB db = new DB();

		String sqlQuery = "SELECT * FROM users_ex3_8150105_2022_2023 WHERE username=? AND password=?;";
		PreparedStatement stmt = null;


		try {

			con = db.getConnection();
			stmt = con.prepareStatement(sqlQuery);
			stmt.setString(1, username);
			stmt.setString(2, password);
			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				User user = new User(rs.getString("firstname"), rs.getString("lastname"), rs.getString("email"), rs.getString("username"), rs.getString("password"));
				return user;
			} else {
				throw new Exception("Username or password must be wrong.");
			}

		} catch (Exception e) {

			throw new Exception(e.getMessage());

		} finally {
			try {
				db.close();
			} catch (Exception e) {
				throw new Exception(e.getMessage());
			}

		}
			
		
	} //End of authenticate
	
	/**
	 * Register/create new User.
	 * 
	 * @param user, User
	 * @throws Exception, if encounter any error.
	 */
	public void register(User user) throws Exception {
			

		//  1 D

		Connection con = null;
		DB db = new DB();
		String sql1 = "SELECT * FROM users_ex3_8150105_2022_2023 WHERE username=? OR email=?;";
		String sql2 = "INSERT INTO users_ex3_8150105_2022_2023 (firstname,lastname,email,username,password) VALUES (?, ?, ?, ?, ?);";
		PreparedStatement stmt1 = null;
		PreparedStatement stmt2 = null;

		try {

			con = db.getConnection();
			stmt1 = con.prepareStatement(sql1);
			stmt1.setString(1, user.getUsername());
			stmt1.setString(2, user.getEmail());
			ResultSet rs = stmt1.executeQuery();

			if (rs.next()) {

              throw new Exception("Sorry, username or email already registered");

            }
			
			    stmt2 = con.prepareStatement(sql2);
				stmt2.setString(1, user.getFirstname());
			    stmt2.setString(2, user.getLastname());
				stmt2.setString(3, user.getUsername());
				stmt2.setString(4, user.getEmail());
				stmt2.setString(5, user.getPassword());
				stmt2.executeUpdate();
				stmt2.close();
				db.close();
			


		} catch (Exception e) {

			throw new Exception(e.getMessage());
		} finally {

			try {
				db.close();
			} catch (Exception e) {

				throw new Exception(e.getMessage());
			}

		}


		
		
	}//end of register

} //End of class
