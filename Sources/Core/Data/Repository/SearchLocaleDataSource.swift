//
//  SearchLocaleDataSource.swift
//  Core
//
//  Created by Mochamad Ikhsan Nurdiansyah on 26/03/25.
//

import Combine

public protocol SearchLocaleDataSource {
    associatedtype Request
    associatedtype Response
    
    func searchMovie(query: String) -> AnyPublisher<Response, Error>
}
