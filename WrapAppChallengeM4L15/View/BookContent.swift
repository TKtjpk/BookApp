//
//  BookContent.swift
//  WrapAppChallengeM4L15
//
//  Created by MacBook Pro (Tomasz) on 12/04/2021.
//

import SwiftUI

struct BookContent: View {
    
    @EnvironmentObject var model: BookModel
    @State private var page = 0
    var book: Book
    
    var body: some View {
        TabView(selection: $page) {
            ForEach(book.content.indices) { index in
                VStack(alignment: .center) {
                    Text(book.content[index])
                        .tag(index)
                    
                    Spacer()
                    
                    Text("\(page + 1)")
                }
            }
            .padding()
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
        .onChange(of: page, perform: { value in
            model.updatePage(forId: book.id, page: page)
        })
        .onAppear {
            page = book.currentPage
        }
        
    }
}

struct BookContent_Previews: PreviewProvider {
    static var previews: some View {
        BookContent(book: Book())
            .environmentObject(BookModel())
    }
}
