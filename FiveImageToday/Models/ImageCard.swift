//
//  ImageCard.swift
//  FiveImageToday
//
//  Created by apple on 2023/4/13.
//

import SwiftUI

struct ImageCard: Identifiable, Hashable{
    var id: UUID = .init()
    var color: Color
    var image_url: String = ""
    var image_prompt: String = ""
}
