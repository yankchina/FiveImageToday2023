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
    private let _height:CGFloat = 600.0
    private let _width: CGFloat = 340.0
    private let _cornerRadius: CGFloat = 25.0
    private let _imageWidth: CGFloat = 600.0
    private let _imageHeight: CGFloat = 340.0
    var body: some View{
        GeometryReader{
            let size = $0.size
            TabView(selection: $currentCard, content: {
                ForEach(listOfCards){ Card in
                    ZStack{
                        RoundedRectangle(cornerRadius: self._cornerRadius, style: .continuous)
                            .fill(Card.color.gradient)
                            .frame(width: self._width, height: size.height)
                            .tag(Card.id.uuidString)
                        if( Card.image_url != "" ){
                            AsyncImage(url: URL(string:Card.image_url))
                                .frame(width: self._imageWidth, height: self._imageHeight)
                        }
                        else
                        {
                            Text("Card ID \(Card.id.uuidString)")
                                .frame(width: self._width - 200, height: size.height)
                        }
                    }
                }
            })
            .tabViewStyle(.page(indexDisplayMode: .never))
        }
        .frame(height: self._height)
        .onAppear{
            /// loading listOfCards
            for color in [Color.red, Color.blue, Color.yellow,Color.orange,Color.brown]{
                listOfCards.append(.init(color:color))
            }
        }
    }
}
