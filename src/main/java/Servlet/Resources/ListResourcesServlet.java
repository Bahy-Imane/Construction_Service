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
import java.util.List;

@WebServlet("/Resources/ListResourcesServlet")
public class ListResourcesServlet extends HttpServlet {
    private ResourceDaoImp resourceDao;

    @Override
    public void init() {
        resourceDao = new ResourceDaoImp();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<Resource> listResources = resourceDao.selectAllResources();
            request.setAttribute("listResources", listResources);
            request.getRequestDispatcher("/WEB-INF/Resources/listResources.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new ServletException("Error retrieving resources", e);
        }
    }
}
