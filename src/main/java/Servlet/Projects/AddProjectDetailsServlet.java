package Servlet.Projects;

import DaoImp.ProjectDaoImp;
import Model.Project;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

@WebServlet(name = "AddProjectDetailsServlet", value = "/AddProjectDetailsServlet")
public class AddProjectDetailsServlet extends HttpServlet {
    private ProjectDaoImp projectDao;

    @Override
    public void init() {
        projectDao = new ProjectDaoImp();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/Projects/addProject.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        Date startDate = Date.valueOf(request.getParameter("startDate"));
        Date endDate = Date.valueOf(request.getParameter("endDate"));
        double budget = Double.parseDouble(request.getParameter("budget"));

        Project project = new Project();
        project.setpName(name);
        project.setpDescription(description);
        project.setpStartdate(startDate);
        project.setpEndDate(endDate);
        project.setBudget(budget);

        try {
            projectDao.addProject(project);
            response.sendRedirect(request.getContextPath() + "/Projects/listProjects");
        } catch (SQLException e) {
            throw new ServletException("Error adding project", e);
        }
    }
}