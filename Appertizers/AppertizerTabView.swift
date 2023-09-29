//
//  ContentView.swift
//  Appertizers
//
//  Created by Himesh's Mac on 2023-09-29.
//

import SwiftUI

struct AppertizerTabView: View {
    var body: some View {
        TabView{
            AppertizerListView()
                .tabItem{
                    Image(systemName: "house.circle.fill")
                    Text("Home")
                }
            
            AccountView()
                .tabItem{
                    Image(systemName: "person.crop.circle.fill")
                    Text("Account")
                }
            
            OrderView()
                .tabItem{
                    Image(systemName: "bag.circle.fill")
                    Text("Order")
                }
        }
        .accentColor(Color("brandPrimary"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppertizerTabView()
    }
}
