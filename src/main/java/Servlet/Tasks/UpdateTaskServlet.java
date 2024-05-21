package Servlet.Tasks;

import DaoImp.TaskDaoImp;
import Model.Task;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/UpdateTaskServlet")
public class UpdateTaskServlet extends HttpServlet {
    private TaskDaoImp taskDao;

    @Override
    public void init() {
        taskDao = new TaskDaoImp();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int tId = Integer.parseInt(request.getParameter("taskId"));
        try {
            Task task = taskDao.selectTaskById(tId);
            request.setAttribute("task", task);
            request.getRequestDispatcher("/WEB-INF/Tasks/updateTask.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new ServletException("Error retrieving task", e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int tId = Integer.parseInt(request.getParameter("tId"));
        String tDescription = request.getParameter("tDescription");
        String tStartDate = request.getParameter("tStartDate");
        String tEndDate = request.getParameter("tEndDate");
        String statut = request.getParameter("status");
        String resources = request.getParameter("resources");
        int pId = Integer.parseInt(request.getParameter("pId"));

        Task task = new Task();
        task.settId(tId);
        task.settDescription(tDescription);
        task.settStartdate(tStartDate);
        task.settEndDate(tEndDate);
        task.setStatut(statut);
        task.setResources(resources);
        task.setpId(pId);

        try {
            taskDao.updateTask(task);
            response.sendRedirect(request.getContextPath() + "/ListTasksServlet");
        } catch (SQLException e) {
            throw new ServletException("Error updating task", e);
        }
    }
}
