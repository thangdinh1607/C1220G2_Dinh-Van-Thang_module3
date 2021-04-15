package model.repository;

import model.bean.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserDAO {
    public   void insertUser(User user)throws SQLException;
    public User selectUser(int id);
    public List<User> selectAllUsers();
    public boolean deleteUser(int id) ;
    public boolean updateUser(User user) throws  SQLException;
    public List<User> searchName(String name) throws SQLException;
}
