//
//  DataService.swift
//  WrapAppChallengeM4L15
//
//  Created by MacBook Pro (Tomasz) on 11/04/2021.
//

import Foundation

class DataService {
    
    func getLocalData() -> [Book] {
        
        // Standard instruction to call local file for data
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        
        // Checking whether it's not nil
        guard pathString != nil else {
            
            return [Book]()
            
        }
        
        // Create url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            
            // Create data object
            let data = try Data(contentsOf: url)
            
            // Decode data
            let decoder = JSONDecoder()
            
            do {
                // Get data
                let bookData = try decoder.decode([Book].self, from: data)
                
                return bookData
            }
            
            catch {
                print(error)
            }
            
        }
        
        catch {
            print(error)
        }
        
        // Return Books
        return [Book]()
    }
    
}
