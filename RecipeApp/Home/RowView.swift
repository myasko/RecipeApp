//
//  RowView.swift
//  RecipeApp
//
//  Created by Георгий Бутров on 25.08.2021.
//

import SwiftUI

struct RowView: View {
    let viewModel: RecipeDetailsViewModel
    var body: some View {
        HStack {
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5) {
                RecipeImage(
                    imageData: viewModel.imageData,
                    imageSize: CGSize(width: 250, height: 300),
                    cornerRadius: 10,
                    shadowIsOn: false
                )
                Text(viewModel.tag)
                Text(viewModel.recipeName)
                    .bold()
                    .font(.title)
                HStack {
                    Text("1 порция")
                    Text("\(viewModel.coockTime) минут")
                    Text("100 ₽")
                }
            }
            
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(viewModel: RecipeDetailsViewModel(recipe: Recipe.getRecipe()))
    }
}

