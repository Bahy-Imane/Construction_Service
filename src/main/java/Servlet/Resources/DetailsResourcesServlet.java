package Servlet.Tasks;
import DaoImp.ResourceDaoImp;
import DaoImp.TaskDaoImp;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;



@WebServlet(name = "DetailsResourcesServlet", value = "/DetailsResourcesServlet")
public class DetailsResourcesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ResourceDaoImp resource = new ResourceDaoImp();
        int idResource = Integer.parseInt(request.getParameter("resourceId"));

        try {
            request.setAttribute("task", resource.selectResourceById(idResource));
            request.getRequestDispatcher("/WEB-INF/Resources/detailsR.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect(request.getContextPath() + "/Resources/detailsR");
    }
}
