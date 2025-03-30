//
//  FavoriteLocalDataSource.swift
//  Core
//
//  Created by Mochamad Ikhsan Nurdiansyah on 25/03/25.
//

import Combine

public protocol FavoriteLocalDataSource {
    associatedtype Request
    associatedtype Response
    
    func getFavoriteMovies() -> AnyPublisher<[Response], Error>
    func updateFavoriteStatus(for movie: Response) -> AnyPublisher<Bool, Error>
}
