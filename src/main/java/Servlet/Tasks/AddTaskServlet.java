package Servlet.Tasks;

import DaoImp.TaskDaoImp;
import Model.Task;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.time.LocalDate;

@WebServlet("/AddTaskServlet")
public class AddTaskServlet extends HttpServlet {
    private TaskDaoImp taskDao;

    @Override
    public void init() {
        taskDao = new TaskDaoImp();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/Tasks/addTask.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TaskDaoImp TaskDaoImp = new TaskDaoImp();
        String tDescription = request.getParameter("tDescription");
        String tStartDate = request.getParameter("tStartDate");
        String tEndDate =request.getParameter("tEndDate");
        String statut = request.getParameter("status");
        String resources = request.getParameter("resources");
        int pId = Integer.parseInt(request.getParameter("pId"));

        Task task = new Task();
        task.settDescription(tDescription);
        task.settStartdate(tStartDate);
        task.settEndDate(tEndDate);
        task.setStatut(statut);
        task.setResources(resources);
        task.setpId(pId);

        try {
            TaskDaoImp.addTask(task);
//            response.sendRedirect(request.getContextPath() + "/listTasks");
        } catch (SQLException e) {
            throw new ServletException("Error adding task", e);
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/Tasks/listTasks.jsp").forward(request, response);
    }

}