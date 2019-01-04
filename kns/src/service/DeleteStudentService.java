package service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.ConnectionProvider;
import jdbc.JdbcUtil;
import student.StudentDao;

public class DeleteStudentService {

private static DeleteStudentService instance = new DeleteStudentService();
	
	public static DeleteStudentService getInstance() {
		return instance;
	}

	private DeleteStudentService() {
	}
	
	public void deleteStudent(String StudentId) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);

			StudentDao studentDao = StudentDao.getInstance();
			//Student Student = StudentDao.select(conn, StudentId);
			/*if (Student == null) {
				throw new StudentNotFoundException("메시지 없음");
			}
			if (!Student.matchPassword(password)) {
				throw new InvalidPasswordException("bad password");
			}*/
			studentDao.delete(conn, StudentId);

			conn.commit();
		} catch (SQLException ex) {
			JdbcUtil.rollback(conn);
			throw new ServiceException("삭제 실패:" + ex.getMessage(), ex);
		} /*catch (InvalidPasswordException | StudentNotFoundException ex) {
			JdbcUtil.rollback(conn);
			throw ex; 
		} */ 
		finally {
			JdbcUtil.close(conn);
		}
	}
}
