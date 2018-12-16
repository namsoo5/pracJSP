package service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.ConnectionProvider;
import jdbc.JdbcUtil;
import member.Member;
import member.MemberDao;
import service.ServiceException;

public class ChangeMemberService {
	private static ChangeMemberService instance = new ChangeMemberService();

	public static ChangeMemberService getInstance() {
		return instance;
	}

	private ChangeMemberService() {
	}

	public void Change(Member member) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			MemberDao membertDao = MemberDao.getInstance();
			membertDao.Change(conn, member);
		} catch (SQLException e) {
			throw new ServiceException(
					"주소록 등록 실패: " + e.getMessage(), e);
		} finally {
			JdbcUtil.close(conn);
		}
	}
	
}
