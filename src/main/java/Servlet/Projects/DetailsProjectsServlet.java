package Servlet.Projects;

import DaoImp.ProjectDaoImp;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "DetailsProjectsServlet", value = "/DetailsProjectsServlet")
public class DetailsProjectsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProjectDaoImp project = new ProjectDaoImp();
        int idProject = Integer.valueOf(request.getParameter("projectId"));
        try {
            request.setAttribute("project", project.selectProjectById(idProject));
            request.getRequestDispatcher("/WEB-INF/Projects/detailsP.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect(request.getContextPath() + "/Projects/detailsP");
    }
}
