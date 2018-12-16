package service;

import java.sql.Connection;


import java.sql.Connection;
import java.sql.SQLException;
import jdbc.JdbcUtil;
import jdbc.ConnectionProvider;

import member.MemberDao;
import member.Member;

public class DeleteMemberService {
private static DeleteMemberService instance = new DeleteMemberService();
	
	public static DeleteMemberService getInstance() {
		return instance;
	}

	private DeleteMemberService() {
	}
	
	public void deleteMember(String MemberId) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);

			MemberDao memberDao = MemberDao.getInstance();
			//Member member = memberDao.select(conn, MemberId);
			/*if (member == null) {
				throw new MemberNotFoundException("메시지 없음");
			}
			if (!member.matchPassword(password)) {
				throw new InvalidPasswordException("bad password");
			}*/
			memberDao.delete(conn, MemberId);

			conn.commit();
		} catch (SQLException ex) {
			JdbcUtil.rollback(conn);
			throw new ServiceException("삭제 실패:" + ex.getMessage(), ex);
		} /*catch (InvalidPasswordException | MemberNotFoundException ex) {
			JdbcUtil.rollback(conn);
			throw ex; 
		} */ 
		finally {
			JdbcUtil.close(conn);
		}
	}
}
