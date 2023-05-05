//
//  GardenModel.swift
//  Lovar
//
//  Created by Jason Leonardo on 04/05/23.
//

import Foundation
import SwiftUI

struct GardenOffset{
    var id: Int
    var treeSizeIndex: Int
    var butterflyImages: [Image]
    var butterflyOffset: [CGPoint]
    var flowerImages: [Image]
    var flowerOffset: [CGPoint]
    
    init(id: Int, treeSizeIndex: Int, butterflyImages: [Image], butterflyOffset: [CGPoint], flowerImages: [Image], flowerOffset: [CGPoint]) {
        self.id = id
        self.treeSizeIndex = treeSizeIndex
        self.butterflyImages = butterflyImages
        self.butterflyOffset = butterflyOffset
        self.flowerImages = flowerImages
        self.flowerOffset = flowerOffset
    }
}



var testGarden = GardenOffset(id: 0, treeSizeIndex: 0, butterflyImages: [], butterflyOffset: [], flowerImages: [], flowerOffset: [])
