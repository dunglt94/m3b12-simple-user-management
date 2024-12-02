package com.example.simpleusermanagement.service;

import com.example.simpleusermanagement.DAO.IUserDAO;
import com.example.simpleusermanagement.DAO.UserDAO;
import com.example.simpleusermanagement.model.User;

import java.sql.SQLException;
import java.util.List;

public class UserService implements IUserService {
    private final IUserDAO userDAO = new UserDAO();
    @Override
    public List<User> findAll() {
        return userDAO.selectAllUsers();
    }

    @Override
    public void create(User user) throws SQLException {
        userDAO.insertUser(user);
    }

    @Override
    public User findById(int id) {
        return userDAO.selectUser(id);
    }

    @Override
    public void update(User user) throws SQLException {
        userDAO.updateUser(user);
    }

    @Override
    public void remove(int id) throws SQLException {
        userDAO.deleteUser(id);
    }
}
