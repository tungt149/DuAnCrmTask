package DuAnCRM_TASK.Dao;

import java.sql.SQLException;
import java.util.List;

import DuAnCRM_TASK.model.Task;

public class test {
	public static void main(String[] args) throws SQLException {
		TaskDao dao = new TaskDao();
	//	List<Task> tasks = dao.findTaskById(2);
		//dao.findTaskById(2);
		
			System.out.println(dao.findTaskById(2));

		}
	}

