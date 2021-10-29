//
//  NetworkManager.swift
//  RecipeApp
//
//  Created by Георгий Бутров on 25.08.2021.
//

import Foundation

class NetworkManager {
    static let shred = NetworkManager()
    
    init() {}
    
    func fetchRecipes(completion: @escaping (_ recipes: [Recipe]) -> Void) {
        guard let url = URL(string: Constants.recipeURL.rawValue) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _,error) in
            if let error = error { print(error); return }
            guard let data = data else { return }
            
            do {
                let decoder = JSONDecoder()
                let recipes = try decoder.decode([Recipe].self, from: data)
                DispatchQueue.main.async {
                    completion(recipes)
                }
            } catch let error {
                print("Error serialisation json", error.localizedDescription)
                print(error)
            }
        } .resume()
    }
}



enum Constants: String {
    case recipeURL = "http://87.242.105.65:8080/recipe/list?latitude=55.70354&longitude=37.59136"
}
