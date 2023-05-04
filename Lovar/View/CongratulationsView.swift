//
//  CongratulationsView.swift
//  Lovar
//
//  Created by Rosa Tiara Galuh on 03/05/23.
//

import SwiftUI

struct CongratulationsView: View {
    @Binding var congratsScreen: Bool
    var body: some View {
        ZStack {
            Color.black.opacity(0.85).edgesIgnoringSafeArea(.all)
            VStack(spacing: -50) {
                Text("Congratulations!")
                    .font(Font.custom("Oregano-Regular", size: 48))
                    .foregroundColor(.white)
                ZStack {
                    Image("trophyGlow")
                    Image("trophy")
                }
            }
            
        }.onTapGesture {
            congratsScreen = false
        }
    }
}

struct CongratulationsView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.opacity(0.85).edgesIgnoringSafeArea(.all)
            VStack(spacing: -50) {
                Text("Congratulations!")
                    .font(Font.custom("Oregano-Regular", size: 48))
                    .foregroundColor(.white)
                ZStack {
                    Image("trophyGlow")
                    Image("trophy")
                }
            }
            
        }

    }
}
