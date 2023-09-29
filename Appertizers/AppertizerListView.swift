//
//  AppertizerListView.swift
//  Appertizers
//
//  Created by Himesh's Mac on 2023-09-29.
//

import SwiftUI

struct AppertizerListView: View {
    
    @State private var appertizers:[Appertizer] = []
    
    var body: some View {
        NavigationView{
               
            List(appertizers){ appertizer in
                AppertizerSingleView(appertizer: appertizer)
                
            }
            .navigationTitle("🍔 Appertizers")
        }
        .onAppear{
            getAppertizers()
        }
    }
    
    func getAppertizers(){
        NetworkManager.shared.getAppertizers{ result in
            switch result{
            case .success(let appertizers):
                self.appertizers = appertizers
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}

struct AppertizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppertizerListView()
    }
}
