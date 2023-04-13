//
//  Home.swift
//  FiveImageToday
//
//  Created by apple on 2023/4/13.
//

import SwiftUI

struct Home: View{
    @State private var currentCard: String = ""
    @State private var listOfCards: [ImageCard] = []
    var body: some View{
        GeometryReader{
            let size = $0.size
            TabView(selection: $currentCard, content: {
                ForEach(listOfCards){ Card in
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Card.color.gradient)
                        .frame(width: 340, height: size.height)
                        .tag(Card.id.uuidString)
                }
            })
            .tabViewStyle(.page(indexDisplayMode: .never))
        }
        .frame(height:600)
        .onAppear{
            /// loading listOfCards
            for color in [Color.red, Color.blue, Color.yellow,Color.orange,Color.brown]{
                listOfCards.append(.init(color:color))
            }
        }
    }
}
