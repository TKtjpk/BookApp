//
//  ContentView.swift
//  WrapAppChallengeM4L15
//
//  Created by MacBook Pro (Tomasz) on 11/04/2021.
//

import SwiftUI

struct BookScrollView: View {
    
    @EnvironmentObject var model:BookModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack (alignment: .leading, spacing: 30){
                    ForEach(model.books) { r in
                        NavigationLink(
                            destination: BookRatingView(book: r),
                            label: {
                                
                                SubScrollView(book: r)
                            })
                    }
                }
            }
            .navigationBarTitle("My Library")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BookScrollView()
            .environmentObject(BookModel())
    }
}
