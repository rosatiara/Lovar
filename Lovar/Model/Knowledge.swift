//
//  Knowledge.swift
//  Lovar
//
//  Created by Rosa Tiara Galuh on 03/05/23.
//

import Foundation
struct Knowledge: Identifiable {
    let id =  UUID().uuidString
    let knowledgeTitle: String
    let knowledgeDesc: String
    let knowledgeImg: String

}

let loveKnowledge = [
    Knowledge(knowledgeTitle: "Tree of Trust", knowledgeDesc: "", knowledgeImg: "ExpTree"),
    Knowledge(knowledgeTitle: "Flowers of Understanding", knowledgeDesc: "", knowledgeImg: "ExpFlower"),
    Knowledge(knowledgeTitle: "Butterfly of Communication", knowledgeDesc: "", knowledgeImg: "ExpButterfly"),
]
