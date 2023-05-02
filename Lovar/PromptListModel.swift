//
//  PromptListModel.swift
//  Lovar
//
//  Created by Jason Leonardo on 28/04/23.
//

import Foundation

struct Prompt: Hashable{
    var id: Int
    var title: String
    var description: String
    var type: Int
    
    init(id: Int, title: String, description: String, type: Int) {
        self.id = id
        self.title = title
        self.description = description
        self.type = type
    }
}

/*
 Types:
 0 = Trust
 1 = Communcation
 2 = Understanding
 */

let prompts = [
    Prompt(id: 0, title: "Photo Time!", description: "Take a picture of your partner on your phone's camera app.", type: 0),
    Prompt(id: 1, title: "Love Letter", description: "Write love letters to each other and mail them from the foreign country.", type: 0),
    Prompt(id: 2, title: "Care Packages", description: "Send care packages filled with their partner's favorite things.", type: 0),
    Prompt(id: 3, title: "Journal Sharing", description: "Share a journal with each other to write about their experiences while traveling.", type: 0),
    Prompt(id: 4, title: "Virtual Date", description: "Plan a surprise virtual date night from the foreign country.", type: 0),
    Prompt(id: 5, title: "Scrapbooking", description: "Create a photo album or scrapbook of their adventures abroad and share it with each other.", type: 0),
    Prompt(id: 6, title: "Online Gaming", description: "Play online games together like chess, cards, or trivia.", type: 0),
    Prompt(id: 7, title: "Virtual Cooking Session", description: "Share recipes and cook the same meal together over video call.", type: 0),
    Prompt(id: 8, title: "Future Trip Planning", description: " Plan a future trip together and research activities and places to visit.", type: 0),
    Prompt(id: 9, title: "Virtual Workout", description: "Schedule a virtual workout or yoga session together.", type: 0),
    Prompt(id: 10, title: "Planning Ahead", description: "Discuss future goals and plans as a couple.", type: 0),
    Prompt(id: 11, title: "Sharing Music", description: " Share playlists of their favorite music and listen to them together.", type: 0),
    Prompt(id: 12, title: "Book Reading", description: "Read a book together and discuss it chapter by chapter.", type: 0),
    Prompt(id: 13, title: "Story Time", description: "Write and exchange short stories or poems with each other.", type: 0),
    Prompt(id: 14, title: "Learning a New Language", description: "Learn a new language together using language learning apps.", type: 0),
    Prompt(id: 15, title: "Bucket List", description: "Create a shared bucket list of activities to do together in the future.", type: 0),
    Prompt(id: 16, title: "Photo Sharing", description: "Share photos and videos of their daily life abroad.", type: 0),
    Prompt(id: 17, title: "Exchanging Skills", description: "Take turns teaching each other a skill they have mastered.", type: 0),
    Prompt(id: 18, title: "Family Game Night", description: " Plan a virtual game night with friends or family from home.", type: 0),
    Prompt(id: 19, title: "Relationship Quotes", description: "Share their favorite quotes and discuss how they relate to their relationship.", type: 0),
]



/*
 Trust Prompts:
 Write love letters to each other and mail them from the foreign country.
 Send care packages filled with their partner's favorite things.
 Plan a surprise virtual date night from the foreign country.
 Watch a movie or TV show together via a streaming service and chat about it.
 Share a journal with each other to write about their experiences while traveling.
 Create a photo album or scrapbook of their adventures abroad and share it with each other.
 Play online games together like chess, cards, or trivia.
 Share recipes and cook the same meal together over video call.
 Schedule a virtual workout or yoga session together.
 Plan a future trip together and research activities and places to visit.
 Discuss their future goals and plans as a couple.
 Share playlists of their favorite music and listen to them together.
 Read a book together and discuss it chapter by chapter.
 Write and exchange short stories or poems with each other.
 Learn a new language together using language learning apps.
 Create a shared bucket list of activities to do together in the future.
 Share photos and videos of their daily life abroad.
 Take turns teaching each other a skill they have mastered.
 Plan a virtual game night with friends or family from home.
 Share their favorite quotes and discuss how they relate to their relationship.
 */