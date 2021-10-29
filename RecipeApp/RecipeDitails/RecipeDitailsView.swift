//
//  RecipeDitailsView.swift
//  RecipeApp
//
//  Created by Георгий Бутров on 25.08.2021.
//

import SwiftUI

struct RecipeDetailsView: View {
    @StateObject var viewModel: RecipeDetailsViewModel
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ZStack{
                RecipeImage(
                    imageData: viewModel.imageData,
                    imageSize: CGSize(width: 350, height: 250),
                    cornerRadius: 30,
                    shadowIsOn: true
                )
            }
            Text(viewModel.recipeName)
                .font(.largeTitle)
                .fontWeight(.heavy)
            HStack {
                Text("\(viewModel.portionSize) порции")
                    .fontWeight(.light)
                Text("\(viewModel.coockTime) минут")
                    .fontWeight(.light)
            }
            Text("Ингредиенты")
                .font(.title)
                .fontWeight(.medium)
        }
    }
}

struct RecipeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailsView(viewModel: RecipeDetailsViewModel(recipe: Recipe.getRecipe()))
    }
}
