//
//  Book.swift
//  WrapAppChallengeM4L15
//
//  Created by MacBook Pro (Tomasz) on 11/04/2021.
//

import Foundation

class Book: Identifiable, Decodable {
    
    var id: Int
    var title: String
    var author: String
    var isFavourite: Bool
    var currentPage: Int
    var rating: Int
    var content: [String]
    
}
