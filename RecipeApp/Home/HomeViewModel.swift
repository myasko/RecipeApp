//
//  HomeViewModel.swift
//  RecipeApp
//
//  Created by Георгий Бутров on 25.08.2021.
//

import Foundation

protocol HomeViewModelProtocol {
    var rows: [RecipeDetailsViewModel] { get }
    
}

class HomeViewModel: HomeViewModelProtocol, ObservableObject {
    @Published var rows: [RecipeDetailsViewModel] = []
    
    func fetchRecipes() {
        print("Fetch data")
        NetworkManager.shred.fetchRecipes { recipes in
            recipes.forEach { [unowned self] recipe in
                let recipeDetailsViewModel = RecipeDetailsViewModel(recipe: recipe)
                rows.append(recipeDetailsViewModel)
                //print(recipe.cookTime)
            }
        }
    }
    
    func foodSort(_ name: String) {
        switch name {
        case "Завтрак":
            print("Завтрак")
        case "Обед":
            print("Обед")
        case "Ужин":
            print("Ужин")
        default:
            return
        }
    }
}

