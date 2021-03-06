package DuAnCRM_TASK.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DuAnCRM_TASK.Service.TaskService;
import DuAnCRM_TASK.UrlUtil.PathUtil;
import DuAnCRM_TASK.UrlUtil.UrlUtil;
import DuAnCRM_TASK.dto.TaskCreateDto;
import DuAnCRM_TASK.model.Task;

@WebServlet(urlPatterns = { UrlUtil.URL_STACK_ADD, UrlUtil.URL_STACK_DASHBOARD, UrlUtil.URL_STACK_UPDATE,
		UrlUtil.URL_STACK_DELETE })
public class TaskServlet extends HttpServlet {
	private TaskService service;

	@Override
	public void init() throws ServletException {
		service = new TaskService();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		switch (req.getServletPath()) {
		case UrlUtil.URL_STACK_DASHBOARD:
			getTaskDashBoard(req, resp);
			break;
		case UrlUtil.URL_STACK_ADD:
			getTaskAdd(req, resp);
			break;
		case UrlUtil.URL_STACK_UPDATE:
			getTaskUpdate(req, resp);
			break;
		case UrlUtil.URL_STACK_DELETE:
			getTaskDelete(req, resp);
			break;
		}
	}

	private void getTaskDashBoard(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		List<Task> tasks = service.findTask();
		if (tasks != null && !tasks.isEmpty())
			req.setAttribute("tasks", tasks);

		req.getRequestDispatcher(PathUtil.PATH_STACK_DASHBOARD).forward(req, resp);

	}

	private void getTaskAdd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher(PathUtil.PATH_STACK_ADD).forward(req, resp);

	}

	private void getTaskUpdate(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		Task task = this.service.findTaskById(id);
		if (task != null)
			req.setAttribute("task", new TaskCreateDto(task));
		req.getRequestDispatcher(PathUtil.PATH_STACK_UPDATE).forward(req, resp);

	}

	private void getTaskDelete(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		int id = Integer.parseInt(req.getParameter("id"));

		service.deleteById(id);
		resp.sendRedirect(req.getContextPath() + UrlUtil.URL_STACK_DASHBOARD);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		switch (req.getServletPath()) {
		case UrlUtil.URL_STACK_DASHBOARD:
			break;
		case UrlUtil.URL_STACK_ADD:
			postAddStask(req, resp);
			break;
		case UrlUtil.URL_STACK_UPDATE:
			postUpdateStask(req, resp);
			break;
		case UrlUtil.URL_STACK_DELETE:
			break;
		}
	}

	private void postAddStask(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		TaskCreateDto staskDto = extractDtoStaskFromReq(req);
		service.add(staskDto);
		resp.sendRedirect(req.getContextPath() + UrlUtil.URL_STACK_DASHBOARD);

	}

	private void postUpdateStask(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		TaskCreateDto dtoTask = extractDtoStaskFromReq(req);
		service.updateTask(dtoTask);
		resp.sendRedirect(req.getContextPath() + UrlUtil.URL_STACK_DASHBOARD);

	}

	private TaskCreateDto extractDtoStaskFromReq(HttpServletRequest req) {
		int id = -1;
		if (req.getParameter("id") != null) {
			id = Integer.parseInt(req.getParameter("id"));
		}
		String name = req.getParameter("name");
		String description = req.getParameter("description");
		String start_date = req.getParameter("start_date");
		String end_date = req.getParameter("end_date");
		int projectId = Integer.parseInt(req.getParameter("project"));
		int userId = Integer.parseInt(req.getParameter("user"));
		int statusId = Integer.parseInt(req.getParameter("status"));

		return new TaskCreateDto(id, name, description, start_date, end_date, projectId, userId, statusId);

	}
}
