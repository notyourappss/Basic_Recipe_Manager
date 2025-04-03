package com.example.recipe_manager.service;

import com.example.recipe_manager.entity.User;
import java.util.Optional;

public interface IUserService {
    void saveUser(User user);
    User authenticate(String username, String password);
}