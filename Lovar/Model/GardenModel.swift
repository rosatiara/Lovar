//
//  GardenModel.swift
//  Lovar
//
//  Created by Jason Leonardo on 04/05/23.
//

import Foundation

struct GardenOffset{
    var id: Int
    var treeSize: [CGFloat]
    var butterflyOffset: [CGPoint]
    var flowerOffset: [CGPoint]
    
    init(id: Int, treeSize: [CGFloat], butterflyOffset: [CGPoint], flowerOffset: [CGPoint]) {
        self.id = id
        self.treeSize = treeSize
        self.butterflyOffset = butterflyOffset
        self.flowerOffset = flowerOffset
    }
}



var testGarden = GardenOffset(id: 0, treeSize: [], butterflyOffset: [], flowerOffset: [])
