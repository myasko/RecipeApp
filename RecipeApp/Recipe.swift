//
//  Recipe.swift
//  RecipeApp
//
//  Created by Георгий Бутров on 25.08.2021.
//

struct Recipe: Decodable {
    let recipeName: String
    let cookTime: Int
    //let imageUrl: String
    let tag: String
    let portionSize: Int
}
    
extension Recipe {
    static func getRecipe() -> Recipe {
        return Recipe(
            recipeName: "Омлет",
            cookTime: 15,
            //imageUrl: "photo",
            tag: "#Завтрак",
            portionSize: 2
        )
    }
}
