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
    
}
