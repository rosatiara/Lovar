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
    var levelCommunication: Int
    var levelTrust: Int
    var levelUnderstanding: Int
    var progressCommunication: Int
    var progressTrust: Int
    var progressUnderstanding: Int
    var requiredProgressCommunication: Int
    var requiredProgressTrust: Int
    var requiredProgressUnderstanding: Int
    var bingoHistory: [Int]

    
    init(id: Int, name: String, patnerId: Int, levelCommunication: Int, levelTrust: Int, levelUnderstanding: Int, progressCommunication: Int, progressTrust: Int, progressUnderstanding: Int, requiredProgressCommunication: Int, requiredProgressTrust: Int, requiredProgressUnderstanding: Int, bingoHistory: [Int]) {
        self.id = id
        self.name = name
        self.patnerId = patnerId
        self.levelCommunication = levelCommunication
        self.levelTrust = levelTrust
        self.levelUnderstanding = levelUnderstanding
        self.progressCommunication = progressCommunication
        self.progressTrust = progressTrust
        self.progressUnderstanding = progressUnderstanding
        self.requiredProgressCommunication = requiredProgressCommunication
        self.requiredProgressTrust = requiredProgressTrust
        self.requiredProgressUnderstanding = requiredProgressUnderstanding
        self.bingoHistory = bingoHistory
    }
}

var testUser = User(id: 0, name: "Chris", patnerId: 1, levelCommunication: 1, levelTrust: 1, levelUnderstanding: 1, progressCommunication: 1, progressTrust: 2, progressUnderstanding: 0, requiredProgressCommunication: 4, requiredProgressTrust: 4, requiredProgressUnderstanding: 4, bingoHistory: [0])

var testUserPartner = User(id: 1, name: "Riley", patnerId: 0, levelCommunication: 1, levelTrust: 1, levelUnderstanding: 1, progressCommunication: 0, progressTrust: 0, progressUnderstanding: 0, requiredProgressCommunication: 4, requiredProgressTrust: 4, requiredProgressUnderstanding: 4, bingoHistory: [0])
