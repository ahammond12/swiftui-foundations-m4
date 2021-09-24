//
//  DataService.swift
//  Recipe List App
//
//  Created by Andy Hammond on 2021-09-16.
//

import Foundation

class DataService {
    
   static func getLocalData() -> [Recipe]{
        // Parse local json file
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        // Check if pathstring is not nil, otherwise...
        guard pathString != nil else {
            return [Recipe]()
        }
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        // Create a data object
       
        do {
            let data = try Data(contentsOf: url)
            // Decode the data with a json decoder
            let decoder = JSONDecoder()
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                // Add the unique IDs
                for r in recipeData {
                    r.id = UUID()
                }
                // Return the recipe
                return recipeData
                
            } catch {
                print(error)
            }
           
        }
        catch {
            // error with gettin data
            print(error)
        }
       
        return [Recipe]()
    }
    
}
