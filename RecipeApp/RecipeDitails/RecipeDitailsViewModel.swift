//
//  RecipeDitailsViewModel.swift
//  RecipeApp
//
//  Created by Георгий Бутров on 25.08.2021.
//

import Foundation

protocol RecipeDetailsViewModelProtocol {
    var recipeName: String { get }
    var imageData: Data? { get }
    var coockTime: Int { get }
    var tag: String { get }
    var portionSize: Int { get }
    init(recipe: Recipe)
}

class RecipeDetailsViewModel: RecipeDetailsViewModelProtocol, ObservableObject {
    private let recipe: Recipe
    
    var tag: String {
        recipe.tag
    }
    
    var imageData: Data?
    
    var recipeName: String {
        recipe.recipeName
    }
    
    var portionSize: Int {
        recipe.portionSize
    }
    
    var coockTime: Int {
        recipe.cookTime
    }
    
    required init(recipe: Recipe) {
        self.recipe = recipe
    }
    
}

