package com.example.recipe_manager.controller;

import com.example.recipe_manager.entity.Recipe;
import com.example.recipe_manager.service.IRecipeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/recipes")
public class RecipeController {

    @Autowired
    private IRecipeService recipeService;

    @GetMapping
    public String listRecipes(Model model) {
        List<Recipe> recipes = recipeService.getAllRecipes();
        System.out.println("Fetched recipes: " + recipes.size());
        for (Recipe recipe : recipes) {
            System.out.println("Recipe: " + recipe.getName() + ", ID: " + recipe.getId());
        }
        model.addAttribute("recipes", recipes);
        return "recipes";
    }

    @GetMapping("/add-recipe")
    public String showAddRecipeForm() {
        return "add-recipe";
    }

    @PostMapping("/add")
    public String addRecipe(@RequestParam String name, @RequestParam String ingredients, @RequestParam String instructions) {
        Recipe recipe = new Recipe(name, ingredients, instructions);
        recipeService.saveRecipe(recipe);
        return "redirect:/recipes";
    }

    @GetMapping("/edit/{id}")
    public String editRecipe(@PathVariable Long id, Model model) {
        Recipe recipe = recipeService.getRecipeById(id);
        model.addAttribute("recipe", recipe);
        return "edit-recipe";
    }

    @PostMapping("/update/{id}")
    public String updateRecipe(@PathVariable Long id, @RequestParam String name, @RequestParam String ingredients, @RequestParam String instructions) {
        Recipe recipe = recipeService.getRecipeById(id);
        recipe.setName(name);
        recipe.setIngredients(ingredients);
        recipe.setInstructions(instructions);
        recipeService.saveRecipe(recipe);
        return "redirect:/recipes";
    }

    @GetMapping("/delete/{id}")
    public String deleteRecipe(@PathVariable Long id) {
        recipeService.deleteRecipe(id);
        return "redirect:/recipes";
    }
}
