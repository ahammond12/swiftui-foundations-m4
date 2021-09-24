//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Andy Hammond on 2021-09-16.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        // Create an instance of data Service and get the data
        
        self.recipes = DataService.getLocalData()
        
        // Set the recipe property
        
    }
}
