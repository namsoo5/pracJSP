package service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.ConnectionProvider;
import jdbc.JdbcUtil;
import student.Student;
import student.StudentDao;

public class ChangeStudentService {

	private static ChangeStudentService instance = new ChangeStudentService();

	public static ChangeStudentService getInstance() {
		return instance;
	}

	private ChangeStudentService() {
	}

	public void Change(Student student) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			StudentDao studentDao = StudentDao.getInstance();
			studentDao.Change(conn, student);
		} catch (SQLException e) {
			throw new ServiceException(
					"주소록 등록 실패: " + e.getMessage(), e);
		} finally {
			JdbcUtil.close(conn);
		}
	}
}
