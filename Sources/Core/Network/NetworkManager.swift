//
//  NetworkManager.swift
//  Core
//
//  Created by Mochamad Ikhsan Nurdiansyah on 16/03/25.
//

import Foundation

@MainActor
public class NetworkManager {
    public static let shared = NetworkManager()
    
    private init() {}
    
    public func fetchData(from urlString: String, completion: @escaping (Result<Data, Error>) -> Void) {
        guard let url = URL(string: urlString) else {
            completion(.failure(NSError(domain: "Invalid URL", code: 400, userInfo: nil)))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data, let httpResponse = response as? HTTPURLResponse else {
                completion(.failure(NSError(domain: "No Data", code: 500, userInfo: nil)))
                return
            }
            
            print("Response Code: \(httpResponse.statusCode)")
            print("Raw Response: \(String(data: data, encoding: .utf8) ?? "No response")")
            
            if httpResponse.statusCode == 200 {
                completion(.success(data))
            } else {
                completion(.failure(NSError(domain: "API Error", code: httpResponse.statusCode, userInfo: nil)))
            }
        }
        task.resume()
    }
    
}

