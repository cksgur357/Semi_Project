package web.member.model.dao;

import static web.common.JDBCTemplate.close;
import static web.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import web.member.model.vo.Member;

public class MemberDAO {

private Properties prop;
	
	public MemberDAO() {
		prop = new Properties();
		
		// 파일 불러오기
		// 1) 파일 경로 가져오기
		String filePath = MemberDAO.class
				          .getResource("/config/member-sql.properties")
				          .getPath();
		
		// 2) 파일 불러오기(load)
		try {
			prop.load(new FileReader(filePath));
			
		} catch (FileNotFoundException e) {

			e.printStackTrace();
		} catch (IOException e) {

			e.printStackTrace();
		}
	}
	
	public int insertMember(Connection con, Member m) {
		int result = 0;
		PreparedStatement ps = null;
		String sql = prop.getProperty("insertMember");
		
		try {
			ps = con.prepareStatement(sql);
			
			// 데이터베이스 숫자 시작은 1부터
			ps.setString(1, m.getUserId());
			ps.setString(2, m.getUserPwd());
			ps.setString(3, m.getUserName());
			ps.setString(4, m.getNickname());
			ps.setInt(   5, m.getAge());
			ps.setString(6, m.getEmail());
			ps.setString(7, m.getPhone());
			ps.setString(8, m.getAddress());
			
			result = ps.executeUpdate();
			
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(ps);
		}
		
		return result;
	}

	public Member selectMember(Connection con, Member loginMember) {
		Member result = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("selectMember");
		
		try {
			// 2. ps 에 준비한 쿼리 연결
			ps = con.prepareStatement(sql);
			
			// 3. sql ? 채우기
			ps.setString(1, loginMember.getUserId());
			ps.setString(2, loginMember.getUserPwd());
			
			// 4. rs (select 실행 결과) 받아오기
			rs = ps.executeQuery();
			
			if(rs.next()) {
				result = new Member();
				
				result.setUserId(   rs.getString("USERID") );
				result.setUserPwd(  rs.getString("password"));
				result.setUserName( rs.getString("userName"));
				result.setNickname(   rs.getString("nickname")        );
				result.setAge(      rs.getInt("AGE")       );
				result.setPhone(    rs.getString("phone")  );
				result.setAddress(  rs.getString("address"));
				result.setEmail(    rs.getString("email")  );
			}
			
			System.out.println("조회 결과 : " + result);
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return result;
	}

public int updateMember(Connection con, Member m) {
	int result = 0;
	PreparedStatement ps = null;
	String sql = prop.getProperty("updateMember");
	
	try {
	
		ps = con.prepareStatement(sql);
	
		ps.setString(1, m.getUserPwd() );
		ps.setString(2, m.getNickname());
		ps.setInt(3, m.getAge() );
		ps.setString(4, m.getEmail() );
		ps.setString(5, m.getPhone() );
		ps.setString(6, m.getAddress() );
		ps.setString(7, m.getUserId() );
		
		result = ps.executeUpdate();
		
	} catch (SQLException e) {
		
		e.printStackTrace();
	} finally {
		
		close(ps);
	}
			
	return result;
}

public int deleteMember(Connection con, String userId) {
	int result = 0;
	PreparedStatement ps = null;
	
	String sql = prop.getProperty("deleteMember"); 
	
	try {
	
		ps = con.prepareStatement(sql);
		
		ps.setString(1, userId);
		
		result = ps.executeUpdate();
		
	} catch (SQLException e) {
		
		e.printStackTrace();
		
	} finally {
		
		close(ps);
	}
	
	return result;
}

public int idcheck(Connection con, String userId) {
	int result = 0;
	PreparedStatement ps = null;
	ResultSet rs = null;
	String sql = prop.getProperty("idcheck");
	
	try {
		ps = con.prepareStatement(sql);
		
		ps.setString(1, userId);
		
		rs = ps.executeQuery();
		
		if(rs.next()) {
			result = rs.getInt(1);
		}
		
	} catch (SQLException e) {
		
		e.printStackTrace();
		
	} finally {
		close(rs);
		close(ps);
	}
	
	return result;
}
}