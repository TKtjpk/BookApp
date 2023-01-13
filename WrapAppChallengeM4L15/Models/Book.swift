//
//  Book.swift
//  WrapAppChallengeM4L15
//
//  Created by MacBook Pro (Tomasz) on 11/04/2021.
//

import Foundation

struct Book: Identifiable, Decodable {
    
    var id =  1
    var title = "Any"
    var author = "Me"
    var isFavourite = true
    var currentPage = 0
    var rating = 2
    var content = ["Cokolwiek", "aby", "było"]
    
}
