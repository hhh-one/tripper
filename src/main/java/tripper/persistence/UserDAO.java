package tripper.persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import tripper.domain.UserVO;

public class UserDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String jdbc_driver = "com.mysql.cj.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://localhost:3306/tripper?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC";
	
	void connect() {
		try {
			Class.forName(jdbc_driver);
			conn = DriverManager.getConnection(jdbc_url, "tripper","passwd");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	void disconnect() {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn != null) {
			try {
				conn.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	//user DB에 추가(회원가입)
	public boolean insertUser(UserVO user) {
		connect();
		String sql = "insert into user values (?,?,?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getId());
			pstmt.setString(2, user.getPasswd());
			pstmt.setString(3, user.getUsername());
			pstmt.setString(4, user.getMobile());
			pstmt.setString(5, user.getEmail());
			pstmt.executeUpdate();
		} catch(SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			disconnect();
		}
		return true;
	}
	
	//login id passwd 확인
	public boolean checkLogin(String id, String passwd) {
		connect();
		String sql = "select * from user where id=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				if (rs.getString("passwd") != null) {
					if(rs.getString("passwd").equals(passwd)) {
						return true;
					}
				}
			}
		} catch(SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			disconnect();
		}
		return false;
	}
	
	//user 정보 수정
	public int updateUser(UserVO user) {
		int cnt = 0;
		connect();
		String sql = "update user set passwd=?, username=?, mobile=?, email=? where id=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getPasswd());
			pstmt.setString(2, user.getUsername());
			pstmt.setString(3, user.getMobile());
			pstmt.setString(4, user.getEmail());
			pstmt.setString(5, user.getId());
			cnt = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return cnt;
	}
	
	//user 정보 삭제
	public int deleteUser(UserVO user) {
		int cnt = 0;
		connect();
		String sql = "delete from user where id=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getPasswd());
			cnt = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return cnt;
	}
	
	//전체 user 출력
	public ArrayList<UserVO> getUserList() {
		connect();
		ArrayList<UserVO> userList = new ArrayList<UserVO>();
		String sql = "select * from user";
		
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				UserVO user = new UserVO();
				user.setId(rs.getString("id"));
				user.setPasswd(rs.getString("passwd"));
				user.setUsername(rs.getString("username"));
				user.setMobile(rs.getString("mobile"));
				user.setEmail(rs.getString("email"));
				userList.add(user);
			}
			rs.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return userList;
	}
}
