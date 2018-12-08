package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import jdbcConnection.ConnectionProvider;
import jdbcConnection.jdbcUtil;
import member.Member;
import member.MemberDao;

public class GetMemberListService {
	
	public List<Member> getMemberList() throws SQLException {
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			MemberDao memberDao = new MemberDao();
			
			List<Member> memberlist = memberDao.selectall(conn);
			
			return memberlist;
		}finally {
			jdbcUtil.close(conn);
		}
	}
	
	public List<Member> getMemberInputName(String name) throws SQLException {
		
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			MemberDao memberDao = new MemberDao();
			return memberDao.selectName(conn, name);
		}finally {
			jdbcUtil.close(conn);
		}
	}
	
	public Member getMemberInputId(String id) throws SQLException {
		
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			MemberDao memberDao = new MemberDao();
			return memberDao.selectId(conn,id);
		}finally {
			jdbcUtil.close(conn);
		}
	}
	
}
