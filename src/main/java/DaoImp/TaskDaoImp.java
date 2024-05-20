package DaoImp;

import DAO.TaskDao;
import Db_Connector.Db_Connection;
import Model.Task;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TaskDaoImp implements TaskDao {

    private static final String INSERT_TASK_SQL = "INSERT INTO task (t_id, t_description, t_start_date, t_end_date, statut, resources, p_id) VALUES (?, ?, ?, ?, ?, ?, ?);";
    private static final String UPDATE_TASK_SQL = "UPDATE task SET t_description = ?, t_start_date = ?, t_end_date = ?, p_id = ? WHERE t_id = ?;";
    private static final String DELETE_TASK_SQL = "DELETE FROM task WHERE t_id = ?;";
    private static final String SELECT_ALL_TASK_SQL = "SELECT * FROM task;";
    private static final String SELECT_TASK_BY_ID_SQL = "SELECT * FROM task WHERE t_id = ?;";

    @Override
    public void addTask(Task task) throws SQLException {
        try (Connection connection = Db_Connection.getConnection();
             PreparedStatement statement = connection.prepareStatement(INSERT_TASK_SQL)) {
            statement.setInt(1, task.gettId());
            statement.setString(2, task.gettDescription());
            statement.setDate(3, task.gettStartdate());
            statement.setDate(4, task.gettEndDate());
            statement.setString(5, task.getStatut());
            statement.setString(6, task.getResources());
            statement.setInt(7, task.getpId());
            statement.executeUpdate();
        }
    }

    @Override
    public boolean updateTask(Task task) throws SQLException {
        boolean isUpdated;
        try (Connection connection = Db_Connection.getConnection();
             PreparedStatement statement = connection.prepareStatement(UPDATE_TASK_SQL)) {
            statement.setString(1, task.gettDescription());
            statement.setDate(2, task.gettStartdate());
            statement.setDate(3, task.gettEndDate());
            statement.setString(4, task.getStatut());
            statement.setString(5, task.getResources());
            statement.setInt(6, task.getpId());
            statement.setInt(7, task.gettId());
            isUpdated = statement.executeUpdate() > 0;
        }
        return isUpdated;
    }

    @Override
    public void deleteTask(int tId) throws SQLException {
        try (Connection connection = Db_Connection.getConnection();
             PreparedStatement statement = connection.prepareStatement(DELETE_TASK_SQL)) {
            statement.setInt(1, tId);
            statement.executeUpdate();
        }
    }

    @Override
    public List<Task> selectAllTasks() throws SQLException {
        List<Task> allTasks = new ArrayList<>();
        try (Connection connection = Db_Connection.getConnection();
             PreparedStatement statement = connection.prepareStatement(SELECT_ALL_TASK_SQL);
             ResultSet rs = statement.executeQuery()) {
            while (rs.next()) {
                int tId = rs.getInt("t_id");
                String tDescription = rs.getString("t_description");
                Date tStartdate = rs.getDate("t_start_date");
                Date tEndDate = rs.getDate("t_end_date");
                String tStatut = rs.getString("statut");
                String resources = rs.getString("resources");
                int pId = rs.getInt("p_id");
                allTasks.add(new Task(tId, tDescription, tStartdate, tEndDate,tStatut,resources, pId));
            }
        }
        return allTasks;
    }

    @Override
    public Task selectTaskById(int tId) throws SQLException {
        Task task = null;
        try (Connection connection = Db_Connection.getConnection();
             PreparedStatement statement = connection.prepareStatement(SELECT_TASK_BY_ID_SQL)) {
            statement.setInt(1, tId);
            try (ResultSet rs = statement.executeQuery()) {
                if (rs.next()) {
                    String tDescription = rs.getString("t_description");
                    Date tStartdate = rs.getDate("t_start_date");
                    Date tEndDate = rs.getDate("t_end_date");
                    String tStatut = rs.getString("statut");
                    String resources = rs.getString("resources");
                    int pId = rs.getInt("p_id");
                    task = new Task(tId, tDescription, tStartdate, tEndDate,tStatut,resources, pId);
                }
            }
        }
        return task;
    }
}
