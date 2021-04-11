//
//  BookMainView.swift
//  WrapAppChallengeM4L15
//
//  Created by MacBook Pro (Tomasz) on 11/04/2021.
//

import SwiftUI

struct BookMainView: View {
    
    var body: some View {
        
        VStack {
            
            BookScrollView()
            
        }
        . environmentObject(BookModel())
    }
}

struct BookMainView_Previews: PreviewProvider {
    static var previews: some View {
            BookMainView()
    }
}
