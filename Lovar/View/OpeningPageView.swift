//
//  OpeningPageView.swift
//  Lovar
//
//  Created by Rosa Tiara Galuh on 27/04/23.
//

import SwiftUI

struct OpeningPageView: View {
    @State private var goToGardenPageView = false
    
    var body: some View {
        ZStack {
            Image("openingBg")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("lovar")
                Image("lovarcat")
                    .offset(y: 270)
            }
            
        }
        .onTapGesture{goToGardenPageView = true}
        .fullScreenCover(isPresented: $goToGardenPageView) {
            GardenPageView()
        }
    }
}

struct OpeningPageView_Previews: PreviewProvider {
    static var previews: some View {
        OpeningPageView()
    }
}
