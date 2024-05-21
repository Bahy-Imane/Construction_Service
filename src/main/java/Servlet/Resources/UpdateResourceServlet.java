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
        int id = Integer.parseInt(request.getParameter("resourceId"));
        try {
            Resource resource = resourceDao.selectResourceById(id);
            request.setAttribute("resource", resource);
            request.getRequestDispatcher("/WEB-INF/Resources/updateResource.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new ServletException("Error retrieving resource", e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int rId = Integer.parseInt(request.getParameter("rId"));
        String rName = request.getParameter("rName");
        String rType = request.getParameter("rType");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String provider = request.getParameter("provider");
        int tId = Integer.parseInt(request.getParameter("tId"));

        Resource resource = new Resource(rId, rName, rType, quantity, provider, tId);

        try {
            resourceDao.updateResource(resource);
            response.sendRedirect(request.getContextPath() + "/Resources/ListResourcesServlet");
        } catch (SQLException e) {
            throw new ServletException("Error updating resource", e);
        }
    }
}
