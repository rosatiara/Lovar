//
//  BingoModel.swift
//  Lovar
//
//  Created by Jason Leonardo on 28/04/23.
//

import Foundation

struct Bingo: Hashable{
    
    var id: Int //(Primary Key)
    var tileCondition: [[Bool]]
    var title: [[String]]
    var description: [[String]]
    var type: [[Int]]
    var isCompleted: Bool
    var mood: String
    var start_date: String
    var end_date: String
    
 
    init(id: Int, tileCondition: [[Bool]], title: [[String]], description: [[String]], type: [[Int]], isCompleted: Bool, mood: String, start_date: String, end_date: String) {
        self.id = id
        self.tileCondition = tileCondition
        self.title = title
        self.description = description
        self.type = type
        self.isCompleted = isCompleted
        self.mood = mood
        self.start_date = start_date
        self.end_date = end_date
    }
}


