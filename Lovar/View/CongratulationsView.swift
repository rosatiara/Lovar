//
//  CongratulationsView.swift
//  Lovar
//
//  Created by Rosa Tiara Galuh on 03/05/23.
//

import SwiftUI
import AVFoundation
var congratulationsSound = AVAudioPlayer()


struct CongratulationsView: View {

    @Binding var congratsScreen: Bool
    var body: some View {
        ZStack {
            Color.black.opacity(0.9).edgesIgnoringSafeArea(.all)
            VStack(spacing: -100) {
                Text("Congratulations!")
                    .font(Font.custom("Oregano-Regular", size: 48))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.yellow)
                    .onAppear {
                        let filePath = Bundle.main.path(forResource: "congratulations", ofType: "mp3")
                        let audioNSURL = NSURL(fileURLWithPath: filePath!)

                        do { congratulationsSound = try AVAudioPlayer(contentsOf: audioNSURL as URL)}
                        catch { return print("Cannot Find The Audio")}

                        congratulationsSound.numberOfLoops = 0
                        congratulationsSound.volume = 0.5
                        congratulationsSound.play()
                
                    }
                ZStack {
                    Image("trophyGlow")
                    Image("trophy")
                }
                
                Text("\n You got a love shot!")
                    .font(Font.custom("Oregano-Regular", size: 38))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.yellow)
            }
            
        }.onTapGesture {
            congratsScreen = false
        }
    }
}

struct CongratulationsView_Previews: PreviewProvider {
    static var previews: some View {
        BingoPageView(userInfo: .constant(testUser))
    }
}
