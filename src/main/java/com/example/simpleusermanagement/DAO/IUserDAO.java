package com.example.simpleusermanagement.DAO;

import com.example.simpleusermanagement.model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserDAO {
    void insertUser(User user) throws SQLException;

    User selectUser(int id);

    List<User> selectAllUsers();

    boolean deleteUser(int id) throws SQLException;

    boolean updateUser(User user) throws SQLException;

    List<User> findByCountry(String country) throws SQLException;

    List<User> sortByName();

    User getUserByIdSP(int id);

    void insertUserSP(User user) throws SQLException;

    void addUserTransaction(User user, List<Integer> permission);

    public void insertUpdateWithoutTransaction();

    public void insertUpdateUseTransaction();
}
