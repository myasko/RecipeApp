//
//  HomeView.swift
//  RecipeApp
//
//  Created by Георгий Бутров on 25.08.2021.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    var body: some View {
        VStack{
            HStack{
                Button("Завтрак", action: foodSortBreakfast)
                Button("Обед", action: foodSortDinner)
                Button("Ужин", action: foodSortSupper)
            }
            NavigationView {
                List(viewModel.rows, id: \.recipeName) { recipeDetailsViewModel in
                    NavigationLink(destination: RecipeDetailsView(viewModel: recipeDetailsViewModel)) {
                        RowView(viewModel: recipeDetailsViewModel)
                    }
                }
            }
            .onAppear() {
                viewModel.fetchRecipes()
            }
        }
    }
    func foodSortBreakfast() {
        viewModel.foodSort("Завтрак")
    }
    
    func foodSortDinner() {
        viewModel.foodSort("Обед")
    }
    
    func foodSortSupper() {
        viewModel.foodSort("Ужин")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        
        HomeView()
    }
}

