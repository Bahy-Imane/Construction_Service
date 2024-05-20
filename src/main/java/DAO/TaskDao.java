package DAO;
import Model.Project;
import Model.Task;
import java.sql.SQLException;
import java.util.List;

public interface TaskDao {

    void addTask(Task task) throws SQLException;
    void updateTask(Project project) throws SQLException;
    void deleteTask(Project project) throws SQLException;
    List<Task> selectAllTasks() throws SQLException;

}
