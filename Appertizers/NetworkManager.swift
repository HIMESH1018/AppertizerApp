//
//  NetworkManager.swift
//  Appertizers
//
//  Created by Himesh's Mac on 2023-09-29.
//

import Foundation


final class NetworkManager{
    
    static let shared = NetworkManager()
    static let baseUrl = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let appertizerUrl = baseUrl + "appetizers"
    
    private init(){}
    
    func getAppertizers(completed: @escaping (Result<[Appertizer], ApError>) -> Void){
        guard let url = URL(string: appertizerUrl) else{
            completed(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) {data,response,error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse,response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else{
                completed(.failure(.invalidData))
                return
            }
            
            do{
                let decoder = JSONDecoder()
                let decodeResponse = try decoder.decode(AppertizerResponse.self, from: data)
                completed(.success(decodeResponse.request))
            }catch{
                completed(.failure(.invalidData))
            }
            
        }
        task.resume()
    }
}
