//
//  CongratulationsView.swift
//  Lovar
//
//  Created by Rosa Tiara Galuh on 03/05/23.
//

import SwiftUI

struct CongratulationsView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CongratulationsView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.opacity(0.9).edgesIgnoringSafeArea(.all)
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
