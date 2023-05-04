//
//  GardenHistory.swift
//  Lovar
//
//  Created by Jason Leonardo on 04/05/23.
//

import Foundation
import SwiftUI

struct HistoryGarden{
    var id: Int
    var image: [Image]
    var month: [String]
    
    init(id: Int, image: [Image], month: [String]) {
        self.id = id
        self.image = image
        self.month = month
    }
}
