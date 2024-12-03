package com.example.simpleusermanagement.service;

import com.example.simpleusermanagement.model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserService {
    List<User> findAll();

    void create(User user) throws SQLException;

    User findById(int id);

    void update(User student) throws SQLException;

    void remove(int id) throws SQLException;

    List<User> findByCountry(String country) throws SQLException;

    List<User> sortByName();

    User getUserByIdSP(int id);

    void insertUserSP(User user) throws SQLException;

    void addUserTransaction(User user, List<Integer> permission);

    public void insertUpdateWithoutTransaction();

    public void insertUpdateUseTransaction();
}
