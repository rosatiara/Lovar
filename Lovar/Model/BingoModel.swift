//
//  BingoModel.swift
//  Lovar
//
//  Created by Jason Leonardo on 28/04/23.
//

import Foundation

struct Bingo: Hashable{
    
    var id: Int //(Primary Key)
    var tileCondition: [[Int]]
    var title: [[String]]
    var description: [[String]]
    var type: [[Int]]
    var isCompleted: Bool
    var mood: String
    var start_date: String
    var end_date: String
    
 
    init(id: Int, tileCondition: [[Int]], title: [[String]], description: [[String]], type: [[Int]], isCompleted: Bool, mood: String, start_date: String, end_date: String) {
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

let conditionFalse = Array(repeating: Array(repeating: 0, count: 4), count: 4)


var bingoTest = Bingo(id: 0, tileCondition: conditionFalse, title: [["None"]], description: [["None"]], type: [[0]], isCompleted: false, mood: "None", start_date: "-", end_date: "-")


