package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

public interface Users {
    User findByUsername(String username);
    Long insert(User user);
    Long update(User user);
    User findUserById(long id);
    void delete(long id);
}
