package com.example.recipe_manager.service;

import com.example.recipe_manager.entity.Recipe;
import java.util.List;

public interface IRecipeService {
    List<Recipe> getAllRecipes();
    Recipe getRecipeById(Long id);
    void saveRecipe(Recipe recipe);
    void updateRecipe(Recipe recipe);
    void deleteRecipe(Long id);
}