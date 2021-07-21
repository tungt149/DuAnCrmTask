package DuAnCRM_TASK.mysqlconnection;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/check")
public class checkConnection extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		if (MySqlConnection.getConnection() != null)
			resp.getWriter().append("Kết nối rồi nha");

		else
			resp.getWriter().append("chưa kết nối nha");
	}
}
