package service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbcConnection.ConnectionProvider;
import jdbcConnection.jdbcUtil;
import member.Member;
import member.MemberDao;

public class WriteMemberService {
	public void Write(Member member) throws SQLException {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			MemberDao memberDao = new MemberDao();
			memberDao.insert(conn, member);
		}finally {
			jdbcUtil.close(conn);
		}
	}
	
	public void Modify(Member member) throws SQLException {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			MemberDao memberDao = new MemberDao();
			memberDao.Update(conn, member);
			
		}finally {
			jdbcUtil.close(conn);
		}
	}
}
