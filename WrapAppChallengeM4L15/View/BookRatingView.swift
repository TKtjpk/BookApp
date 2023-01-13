//
//  BookRatingView.swift
//  WrapAppChallengeM4L15
//
//  Created by MacBook Pro (Tomasz) on 12/04/2021.
//

import SwiftUI

struct BookRatingView: View {
    
    @EnvironmentObject var model:BookModel
    @State private var rating = 3
    
    var book:Book
   
    var body: some View {
        VStack (alignment: .leading, spacing: 20) {
            Spacer()
            
            VStack (alignment: .center) {
                
                NavigationLink(
                    destination: BookContent(book: book),
                    label: {
                        VStack {
                            Text("Read Now!")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .accentColor(.black)
                            Image("cover\(book.id)")
                                .resizable()
                                .scaledToFit()
                        
                        }
                    })
                
                Spacer()
                Text("Mark for later!")
                    .padding(.bottom, 10)
                Spacer()
                
                Button(action: { model.updateFavourite(forId: book.id) }) {
                    Image(systemName: book.isFavourite ? "star.fill" : "star")
                        .resizable()
                        .frame(width: 28, height: 28)
                }
                .accentColor(.yellow)

                Spacer()
                
                Text("Rate \(book.title)")
                    .padding(.top, 30)
                Picker("", selection: $rating) {
                    /*@START_MENU_TOKEN@*/Text("1").tag(1)/*@END_MENU_TOKEN@*/
                    /*@START_MENU_TOKEN@*/Text("2").tag(2)/*@END_MENU_TOKEN@*/
                    Text("3").tag(3)
                    Text("4").tag(4)
                    Text("5").tag(5)

                }
                .pickerStyle(SegmentedPickerStyle())
                .onChange(of: rating, perform: { value in
                    model.updateRating(forId: book.id, rating: rating)
                })
            }
            .padding([.leading, .trailing, .bottom], 60)
           
        }
        .onAppear { rating = book.rating }
        .navigationBarTitle(book.title)
    }
    
}

struct BookRatingView_Previews: PreviewProvider {
    static var previews: some View {
        BookRatingView(book: Book())
            .environmentObject(BookModel())
        
    }
}
