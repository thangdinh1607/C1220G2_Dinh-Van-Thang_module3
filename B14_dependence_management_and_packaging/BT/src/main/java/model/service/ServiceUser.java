package model.service;

import model.bean.User;
import model.repository.IUserDAO;
import model.repository.UserDAO;

import java.sql.SQLException;
import java.util.List;

public class ServiceUser implements IServiceUser {
    IUserDAO iuserDAO = new UserDAO();

    @Override
    public void insertUser(User user) throws SQLException {
        iuserDAO.insertUser(user);
    }

    @Override
    public User selectUser(int id) {
        return iuserDAO.selectUser(id);
    }

    @Override
    public List<User> selectAllUsers() {
        return iuserDAO.selectAllUsers();
    }

    @Override
    public boolean deleteUser(int id) throws SQLException {
        return iuserDAO.deleteUser(id);
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        return iuserDAO.updateUser(user);
    }

    @Override
    public List<User> searchName(String name) throws SQLException {
        return iuserDAO.searchName(name);
    }

    @Override
    public List<User> sortAllUsers () {
        return iuserDAO.sortAllUsers();
    }
}
