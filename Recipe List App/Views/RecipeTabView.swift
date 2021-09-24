//
//  RecipeTabView.swift
//  Recipe List App
//
//  Created by Andy Hammond on 2021-09-24.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        
        
        TabView{
            Text("Featured View")
                .tabItem{
                    VStack{
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
             RecipeListView()
                .tabItem {
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
        }
        
        
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
