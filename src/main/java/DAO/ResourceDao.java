package DAO;
import Model.Resource;
import java.sql.SQLException;
import java.util.List;

public interface ResourceDao {

    void addResource(Resource resource) throws SQLException;
    void updateResource(Resource resource) throws SQLException;
    void deleteResource(Resource resource) throws SQLException;
    List<Resource> selectAllResources() throws SQLException;
}
