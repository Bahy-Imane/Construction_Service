package Servlet.Resources;

import DaoImp.ResourceDaoImp;
import Model.Resource;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/UpdateResourceServlet")
public class UpdateResourceServlet extends HttpServlet {
    private ResourceDaoImp resourceDao;

    @Override
    public void init() {
        resourceDao = new ResourceDaoImp();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int taskId = Integer.parseInt(request.getParameter("taskId"));
        int resourceId = Integer.parseInt(request.getParameter("resourceId"));
        try {
            Resource resource = resourceDao.selectResourceById(resourceId);
            request.setAttribute("resource", resource);
            request.setAttribute("resourceId", resourceId);
            request.setAttribute("taskId", taskId);
            request.getRequestDispatcher("/WEB-INF/Resources/updateResource.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new ServletException("Error retrieving resource", e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int taskId = Integer.parseInt(request.getParameter("taskId"));
        int resourceId = Integer.parseInt(request.getParameter("resourceId"));
        String rName = request.getParameter("rName");
        String rType = request.getParameter("rType");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String provider = request.getParameter("provider");
        String rImg = request.getParameter("rImg");

        Resource resource = new Resource(rName, rType, quantity, provider, rImg, resourceId);

        try {
            resourceDao.updateResource(resource);
            response.sendRedirect(request.getContextPath() + "/ListResourcesServlet?taskId=" + taskId);
        } catch (SQLException e) {
            throw new ServletException("Error updating resource", e);
        }
    }
}
