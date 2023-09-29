//
//  Appertizer.swift
//  Appertizers
//
//  Created by Himesh's Mac on 2023-09-29.
//

import Foundation

struct Appertizer: Decodable,Identifiable{ //only decoding -> othewise use codable
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
    
}

struct AppertizerResponse:Decodable {
    let request: [Appertizer]
}


struct MockData {
    
    static let sampleAppertizer = Appertizer(id: 0001,
                                             name:"Test Appertizer",
                                             description:"This is a the description for my appertizer. It's yummy",
                                             price: 9.99,
                                             imageURL:"",
                                             calories: 10,
                                             protein: 12,
                                             carbs: 15)
    
    static let appertizers = [sampleAppertizer,sampleAppertizer,sampleAppertizer,sampleAppertizer]
}
