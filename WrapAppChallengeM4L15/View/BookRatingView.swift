//
//  BookRatingView.swift
//  WrapAppChallengeM4L15
//
//  Created by MacBook Pro (Tomasz) on 12/04/2021.
//

import SwiftUI

struct BookRatingView: View {
    
    var book:Book
    @State var rating = 3
    
    var body: some View {
        VStack (spacing: 20) {
            HStack{
                Text(book.title)
                    .bold()
                    .font(.largeTitle)
                    Spacer()
                }
            VStack (alignment: .center){
                Text("Read Now!")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Image("cover\(book.id)")
                    .resizable()
                    .scaledToFit()
                Text("Mark for later!")
                Image(systemName: "star")
                Text("Rate \(book.title)")
                Picker("", selection: $rating) {
                    /*@START_MENU_TOKEN@*/Text("1").tag(1)/*@END_MENU_TOKEN@*/
                    /*@START_MENU_TOKEN@*/Text("2").tag(2)/*@END_MENU_TOKEN@*/
                }
                .pickerStyle(SegmentedPickerStyle())
                
            }
            .padding(60)
        }
    }
}

struct BookRatingView_Previews: PreviewProvider {
    static var previews: some View {
        let model = BookModel()
        
        BookRatingView(book: model.books[0])
        
    }
}
