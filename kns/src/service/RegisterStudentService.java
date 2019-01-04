package service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.ConnectionProvider;
import jdbc.JdbcUtil;
import student.Student;
import student.StudentDao;

public class RegisterStudentService {
	private static RegisterStudentService instance = new RegisterStudentService();

	public static RegisterStudentService getInstance() {
		return instance;
	}

	private RegisterStudentService() {
	}

	public void write(Student Student) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			StudentDao studentDao = StudentDao.getInstance();
			studentDao.insert(conn, Student);
		} catch (SQLException e) {
			throw new ServiceException(
					"메시지 등록 실패: " + e.getMessage(), e);
		} finally {
			JdbcUtil.close(conn);
		}
	}
}
