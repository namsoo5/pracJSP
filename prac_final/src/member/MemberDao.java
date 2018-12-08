package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import jdbcConnection.jdbcUtil;

public class MemberDao {

	public int insert(Connection conn, Member member) throws SQLException {
		PreparedStatement pstmt = null;
		
		try {
		pstmt = conn.prepareStatement("insert into MEMBER (id,name,tel,regdate) values (?,?,?,?)");
		pstmt.setString(1, member.getId());
		pstmt.setString(2, member.getName());
		pstmt.setString(3, member.getTel());
		pstmt.setTimestamp(4, member.getRegdate());
		
		return pstmt.executeUpdate();
		}finally {
			jdbcUtil.close(pstmt);
		}
	}
	
	public Member selectId(Connection conn, String memberID) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
		pstmt = conn.prepareStatement("select * from MEMBER where id = ?");
		pstmt.setString(1, memberID);
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			return makeMemberFromSelect(rs);
		}else
			return null;
		}finally {
			jdbcUtil.close(pstmt);
			jdbcUtil.close(rs);
		}
	}
	
	private Member makeMemberFromSelect(ResultSet rs) throws SQLException {
		
		Member member = new Member();
		member.setId(rs.getString("id"));
		member.setName(rs.getString("name"));
		member.setTel(rs.getString("tel"));
		member.setRegdate(rs.getTimestamp("regdate"));
		return member;
	}
	
	public List<Member> selectall(Connection conn) throws SQLException {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement("select * from member order by id asc limit 10");
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				List<Member> memberlist = new ArrayList<Member>();
				do {
					memberlist.add(makeMemberFromSelect(rs));
					
				}while(rs.next());
				return memberlist;
			}else
				return Collections.emptyList();
		}finally {
			jdbcUtil.close(rs);
			jdbcUtil.close(pstmt);
		}
		
	}
	
	public List<Member> selectName(Connection conn, String name) throws SQLException {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
		pstmt = conn.prepareStatement("select * from MEMBER where name = ?");
		pstmt.setString(1, name);
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			List<Member> memberlist = new ArrayList<Member>();
			do {
				memberlist.add(makeMemberFromSelect(rs));
				
			}while(rs.next());
			return memberlist;
		}else
			return null;
		}finally {
			jdbcUtil.close(pstmt);
			jdbcUtil.close(rs);
		}
	}
	
	public int Update(Connection conn, Member member) throws SQLException {
		PreparedStatement pstmt =null;
		try {
			pstmt = conn.prepareStatement("UPDATE member set name = ?, tel = ? where id = ?");
			pstmt.setString(1, member.getName());
			pstmt.setString(2,  member.getTel());
			pstmt.setString(3, member.getId());
			return pstmt.executeUpdate();
		}finally {
			jdbcUtil.close(pstmt);
		}
	}
	
	public void Delete(Connection conn, String memberId) throws SQLException {
		PreparedStatement pstmt =null;
		try {
			pstmt = conn.prepareStatement("delete from member where id = ?");
			pstmt.setString(1, memberId);
			pstmt.executeUpdate();
		}finally {
			jdbcUtil.close(pstmt);
		}
	}
	
}
