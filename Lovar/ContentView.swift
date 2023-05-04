//
//  ContentView.swift
//  Lovar
//
//  Created by Rosa Tiara Galuh on 27/04/23.
//

import SwiftUI
import CoreData
import AVFoundation

var backgroundMusic = AVAudioPlayer()

struct ContentView: View {
    
    var body: some View {
        VStack {
            NavigationLink(
                destination: GardenPageView(),
                label: {
                    EmptyView()
                })
            OpeningPageView()
        }.onAppear {
            let filePath = Bundle.main.path(forResource: "backgroundMusic", ofType: "mp3")
            let audioNSURL = NSURL(fileURLWithPath: filePath!)
            
            do { backgroundMusic = try AVAudioPlayer(contentsOf: audioNSURL as URL)}
            catch { return print("Cannot Find The Audio")}
            
            backgroundMusic.numberOfLoops = -1
            backgroundMusic.volume = 0.5
            backgroundMusic.play()
        }
        //        BingoPageView()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OpeningPageView()
    }
}
