//
//  Knowledge.swift
//  Lovar
//
//  Created by Rosa Tiara Galuh on 03/05/23.
//

import Foundation
struct Knowledge: Identifiable {
    let id =  UUID().uuidString
    let knowledgeIcon: String
    let knowledgeTitle: String
    let knowledgeDesc: String
    let knowledgeImg: String

}

let knowledges = [
    Knowledge(knowledgeIcon:"ExpTree", knowledgeTitle: "Tree of Trust", knowledgeDesc: "Lorem ipsum dolor sit amet", knowledgeImg: "ExpTree"),
    Knowledge(knowledgeIcon:"ExpFlower", knowledgeTitle: "Flowers of Understanding", knowledgeDesc: "", knowledgeImg: "ExpFlower"),
    Knowledge(knowledgeIcon:"ExpButterfly", knowledgeTitle: "Butterfly of Communication", knowledgeDesc: "", knowledgeImg: "ExpButterfly"),
]
