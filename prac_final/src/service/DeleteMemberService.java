package service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbcConnection.ConnectionProvider;
import jdbcConnection.jdbcUtil;
import member.MemberDao;

public class DeleteMemberService {

	public void delete(String memberId) throws SQLException {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			MemberDao memberDao = new MemberDao();
			memberDao.Delete(conn, memberId);
			
		}finally {
			jdbcUtil.close(conn);
		}
	}
}
