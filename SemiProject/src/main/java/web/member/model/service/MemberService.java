package web.member.model.service;

import static web.common.JDBCTemplate.close;
import static web.common.JDBCTemplate.commit;
import static web.common.JDBCTemplate.getConnection;
import static web.common.JDBCTemplate.rollback;
import static web.common.JDBCTemplate.close;
import static web.common.JDBCTemplate.commit;
import static web.common.JDBCTemplate.getConnection;
import static web.common.JDBCTemplate.rollback;

import java.sql.Connection;

import web.member.model.dao.MemberDAO;
import web.member.model.vo.Member;

public class MemberService {
	private Connection con;
	private MemberDAO dao = new MemberDAO();
	
	public int insertMember(Member m) {
		con = getConnection();
		
		int result = dao.insertMember(con, m);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	public Member selectMember(Member loginMember) {
		con = getConnection();
		
		Member result = dao.selectMember(con, loginMember);
		
		close(con);
		
		return result;
	}

	public int updateMember(Member m) {
		con = getConnection();
		
		int result = dao.updateMember(con, m);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	public int deleteMember(String userId) {
		con = getConnection();
		
		int result = dao.deleteMember(con, userId);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	public int idcheck(String userId) {
		con = getConnection();
		
		int result = dao.idcheck(con, userId);
		
		close(con);
		
		return result;
	}
}


