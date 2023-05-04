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
    var treeSize: [CGFloat]
    var butterflyImages: [Image]
    var butterflyOffset: [CGPoint]
    var flowerImages: [Image]
    var flowerOffset: [CGPoint]
    
    init(id: Int, treeSize: [CGFloat], butterflyImages: [Image], butterflyOffset: [CGPoint], flowerImages: [Image], flowerOffset: [CGPoint]) {
        self.id = id
        self.treeSize = treeSize
        self.butterflyImages = butterflyImages
        self.butterflyOffset = butterflyOffset
        self.flowerImages = flowerImages
        self.flowerOffset = flowerOffset
    }
}



var testGarden = GardenOffset(id: 0, treeSize: [], butterflyImages: [], butterflyOffset: [], flowerImages: [], flowerOffset: [])
