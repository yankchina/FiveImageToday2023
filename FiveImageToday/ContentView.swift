//
//  ContentView.swift
//  FiveImageToday
//
//  Created by apple on 2023/4/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            Home()
                .navigationTitle("Five Image Today")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
