package Servlet.Tasks;
import DaoImp.TaskDaoImp;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;



@WebServlet(name = "DetailsTasksServlet", value = "/DetailsTasksServlet")
public class DetailsTasksServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TaskDaoImp task = new TaskDaoImp();
        int idTask = Integer.parseInt(request.getParameter("taskId"));

        try {
            request.setAttribute("task", task.selectTaskById(idTask));
            request.getRequestDispatcher("/WEB-INF/Tasks/detailsT.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect(request.getContextPath() + "/Tasks/detailsT");
    }
}
