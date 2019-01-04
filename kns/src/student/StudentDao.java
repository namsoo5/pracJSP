package student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import jdbc.JdbcUtil;
import student.Student;
import student.StudentDao;

public class StudentDao {
	private static StudentDao StudentDao = new StudentDao();
	public static StudentDao getInstance() {
		return StudentDao;
	}
	
	private StudentDao() {}
	
	public int insert(Connection conn, Student Student) throws SQLException {
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(
					"insert into Student" + 
					"(id, name, department, phone, address) values (?, ?, ?, ?, ?)");
			pstmt.setInt(1, Student.getId());
			pstmt.setString(2, Student.getName());
			pstmt.setString(3, Student.getDepartment());
			pstmt.setString(4, Student.getPhone());
			pstmt.setString(5, Student.getAddress());
			return pstmt.executeUpdate();
		} finally {
			JdbcUtil.close(pstmt);
		}
	}
//id검색
	public Student select(Connection conn, String StudentId) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(
					"select * from Student where id = ?");
			pstmt.setString(1, StudentId);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return makeStudentFromResultSet(rs);
			} else {
				return null;
			}
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}

	private Student makeStudentFromResultSet(ResultSet rs) throws SQLException {
		Student student = new Student();
		student.setId(rs.getInt("id"));
		student.setName(rs.getString("name"));
		student.setDepartment(rs.getString("department"));
		student.setPhone(rs.getString("phone"));
		student.setAddress(rs.getString("address"));
		return student;
	}
	public int selectCountByName(Connection conn,String name) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql="select count(*) from Student where name = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();
			rs.next();
			return rs.getInt(1);
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}

	public int selectCount(Connection conn) throws SQLException {
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select count(*) from Student");
			rs.next();
			return rs.getInt(1);
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
		}
	}

	
	//전체목록
	public List<Student> selectList(Connection conn, int firstRow, int endRow) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(
					"select * from Student " + 
					"order by id desc limit ?, ?");
			pstmt.setInt(1, firstRow - 1);
			pstmt.setInt(2, endRow - firstRow + 1);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				List<Student> StudentList = new ArrayList<Student>();
				do {
					StudentList.add(makeStudentFromResultSet(rs));
				} while (rs.next());
				return StudentList;
			} else {
				return Collections.emptyList();
			}
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}

	public int delete(Connection conn, String StudentId) throws SQLException {
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(
					"delete from Student where id = ?");
			pstmt.setString(1, StudentId);
			return pstmt.executeUpdate();
		} finally {
			JdbcUtil.close(pstmt);
		}
	}
	
	public List<Student> selectByname(Connection conn,int firstRow, int endRow, String name) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(
					"select * from Student where name = ?");
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				List<Student> Studentlist = new ArrayList<Student>();
				do {
					Studentlist.add(makeStudentFromResultSet(rs));
				}while(rs.next());
				return Studentlist;
			} else {
				return null;
			}
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
	}
	
	public int Change(Connection conn, Student Student) throws SQLException {
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(
					"UPDATE Student SET " + 
					"name = ?, department = ?, phone = ?, address = ? WHERE id = ?");
			pstmt.setString(1, Student.getName());
			pstmt.setString(2, Student.getDepartment());
			pstmt.setString(3, Student.getPhone());
			pstmt.setString(4, Student.getAddress());
			pstmt.setInt(5, Student.getId());
			return pstmt.executeUpdate();
		} finally {
			JdbcUtil.close(pstmt);
		}
	}
}
