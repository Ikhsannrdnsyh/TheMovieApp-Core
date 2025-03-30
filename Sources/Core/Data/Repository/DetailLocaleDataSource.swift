//
//  DetailLocaleDataSource.swift
//  Core
//
//  Created by Mochamad Ikhsan Nurdiansyah on 23/03/25.
//

import Combine
 
public protocol DetailLocaleDataSource {
    associatedtype Request
    associatedtype Response
 
    
    func getMovieDetail(id: Int) -> AnyPublisher<Response, Error>
    func saveFavoriteMovie(_ movie: Response) throws
    func removeFavoriteMovie(_ movie: Response) throws
    func isFavorite(movieId: Int) -> Bool
}
