//
//  BookModel.swift
//  WrapAppChallengeM4L15
//
//  Created by MacBook Pro (Tomasz) on 11/04/2021.
//

import Foundation

class BookModel: ObservableObject {
    
    @Published var books = [Book]()
    
    init() {
        
        let service = DataService()
        self.books = service.getLocalData()
        
    }
    
    func updateFavourite(forId: Int) {
        if let index = books.firstIndex(where: { $0.id == forId }) {
            books[index].isFavourite.toggle()
        }
    }
    
    
    /// Update the specified book's rating. Does nothing if `forId` is invalid.
    func updateRating(forId: Int, rating: Int) {
        if let index = books.firstIndex(where: { $0.id == forId }) {
            books[index].rating = rating
        }
    }
    
    
    /// Update the specified book's current page. Does nothing if `forId` is invalid.
    func updatePage(forId: Int, page: Int) {
        if let index = books.firstIndex(where: { $0.id == forId }) {
            books[index].currentPage = page
        }
    }
    
}

