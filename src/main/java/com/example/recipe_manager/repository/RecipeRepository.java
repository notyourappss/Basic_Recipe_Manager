package com.example.recipe_manager.repository;

import com.example.recipe_manager.entity.Recipe;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RecipeRepository extends JpaRepository<Recipe, Long> {
}