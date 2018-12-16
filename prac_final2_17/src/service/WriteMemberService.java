package service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.ConnectionProvider;
import member.MemberDao;
import jdbc.JdbcUtil;
import member.Member;

public class WriteMemberService {
	private static WriteMemberService instance = new WriteMemberService();

	public static WriteMemberService getInstance() {
		return instance;
	}

	private WriteMemberService() {
	}

	public void write(Member Member) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			MemberDao memberDao = MemberDao.getInstance();
			memberDao.insert(conn, Member);
		} catch (SQLException e) {
			throw new ServiceException(
					"메시지 등록 실패: " + e.getMessage(), e);
		} finally {
			JdbcUtil.close(conn);
		}
	}

}
