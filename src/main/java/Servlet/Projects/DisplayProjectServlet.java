package Servlet.Projects;

import DAO.ProjectDao;
import DaoImp.ProjectDaoImp;
import Model.Project;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

@WebServlet("/DisplayProjectServlet")
public class DisplayProjectServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProjectDao projectDao;

    @Override
    public void init() throws ServletException {
        projectDao = new ProjectDaoImp();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            request.setAttribute("listProjects", projectDao.selectAllProjects());
        } catch (SQLException e) {
            throw new ServletException("Cannot obtain projects from DB", e);
        }
        request.getRequestDispatcher("/WEB-INF/Projects/listProjects.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

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
            response.sendRedirect(request.getContextPath() + "/WEB-INF/Projects/listProjects.jsp");
        } catch (SQLException e) {
            throw new ServletException("Error adding project", e);
        }
    }
}
