//
//  ContentView.swift
//  FiveImageToday
//
//  Created by apple on 2023/4/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            NavigationStack{
                Home()
            }
            Text("yankchina@seu.edu.cn")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
