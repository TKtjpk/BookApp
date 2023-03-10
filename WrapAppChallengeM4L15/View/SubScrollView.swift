//
//  SubScrollView.swift
//  WrapAppChallengeM4L15
//
//  Created by MacBook Pro (Tomasz) on 11/04/2021.
//

import SwiftUI

struct SubScrollView: View {
    
    var book:Book
    
    var body: some View {
        
        VStack (spacing: 20) {
            ZStack (alignment: .leading) {
                Rectangle()
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(color: .gray, radius: 5, x: -5, y: 5)
                
                VStack (alignment: .leading) {
                    HStack{
                        Text(book.title)
                            .bold()
                            .foregroundColor(.primary)
                            .font(.largeTitle)
                            .padding(.bottom, 2)
                        
                        Spacer()
                        
                        if book.isFavourite {
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundColor(.yellow)
                        }
                        
                        
                    }
                    
                    Text(book.author)
                        .foregroundColor(.primary)
                    Image("cover\(book.id)")
                        .resizable()
                        .scaledToFit()
                        .padding(.all, 4)
                        .padding(.bottom, 6)
                }
                .padding([.leading, .trailing], 5)
            }
        }
    }
}

struct SubScrollView_Previews: PreviewProvider {
    static var previews: some View {
        //let model = BookModel()
        
        SubScrollView(book: Book())
    }
}
