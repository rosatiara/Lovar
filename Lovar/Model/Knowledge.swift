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
    Knowledge(knowledgeIcon:"ExpTree", knowledgeTitle: "Tree of Trust", knowledgeDesc: "Trust is like the sun to a plant - it's absolutely essential for relationships. However, trust requires steady communication, honesty, and dependability. According to a study in the Journal of Social and Personal Relationships, trust is a key ingredient in relationship satisfaction and commitment. So keep those lines of communication open, be true to your word, and don't forget to sprinkle in some good old-fashioned positivity.", knowledgeImg: "ExpTree"),
    Knowledge(knowledgeIcon:"ExpFlower", knowledgeTitle: "Flowers of Understanding", knowledgeDesc: "Being in a different location than your partner means you'll inevitably face unique challenges and obstacles, but understanding each other's perspectives and needs can help overcome them. By making an effort to listen and empathize, you can create a deeper and more meaningful connection with your partner. Studies have shown that feeling understood is closely linked to relationship satisfaction and commitment. ", knowledgeImg: "ExpFlower"),
    Knowledge(knowledgeIcon:"ExpButterfly", knowledgeTitle: "Butterfly of Communication", knowledgeDesc: "Communication is the glue that holds a long-distance relationship together. Sure, it's not always easy to stay connected when you're miles apart, but it's worth the effort. In fact, studies have shown that couples who communicate effectively in a long-distance relationship experience greater intimacy and satisfaction than those who don't. ", knowledgeImg: "ExpButterfly"),
]
