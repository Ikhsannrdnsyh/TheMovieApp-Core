//
//  APIContants.swift
//  Core
//
//  Created by Mochamad Ikhsan Nurdiansyah on 16/03/25.
//

import Foundation

public struct APIConstants {
    public static let baseUrl = "https://api.themoviedb.org/3/"
    public static let basePosterUrl = "https://image.tmdb.org/t/p/w500"
    public static let baseBackdropUrl = "https://image.tmdb.org/t/p/original"
    
    public static let apiKey: String = {
        guard let key = Bundle.main.infoDictionary?["API_KEY"] as? String, !key.isEmpty else {
            print("API Key is missing, using default API key.")
            return "DEFAULT_API_KEY"
        }
        print("API Key Loaded: \(key.prefix(4))**** (partially hidden)")
        return key
    }()
    
}
