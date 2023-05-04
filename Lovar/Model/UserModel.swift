//
//  UserModel.swift
//  Lovar
//
//  Created by Jason Leonardo on 28/04/23.
//

import Foundation

struct User: Hashable{
    var id: Int
    var name: String
    var patnerId: Int
    var bingoHistory: [Int]
    
    
    init(id: Int, name: String, patnerId: Int, bingoHistory: [Int]) {
        self.id = id
        self.name = name
        self.patnerId = patnerId
        self.bingoHistory = bingoHistory
    }
}

var testUser = User(id: 0, name: "Chris", patnerId: 1, bingoHistory: [0])

var testUserPartner = User(id: 1, name: "Riley", patnerId: 0, bingoHistory: [0])
