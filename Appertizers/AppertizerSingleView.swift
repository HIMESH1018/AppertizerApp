//
//  AppertizerSingleView.swift
//  Appertizers
//
//  Created by Himesh's Mac on 2023-09-29.
//

import SwiftUI

struct AppertizerSingleView: View {
    
    let appertizer: Appertizer
    var body: some View {
        HStack{
            Image(systemName:"birthday.cake.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120,height: 90)
                .cornerRadius(8)
            VStack(alignment:.leading, spacing: 5){
                Text(appertizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(appertizer.price,specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.bold)
                    
            }.padding(.leading)
        }
    }
}

struct AppertizerSingleView_Previews: PreviewProvider {
    static var previews: some View {
        AppertizerSingleView(appertizer: MockData.sampleAppertizer)
    }
}
