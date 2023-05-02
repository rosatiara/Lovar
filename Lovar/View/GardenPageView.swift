//
//  GardenPageView.swift
//  Lovar
//
//  Created by Rosa Tiara Galuh on 27/04/23.
//

import SwiftUI

struct GardenPageView: View {
    var body: some View {

        ZStack {
            Image("gardenEmpty")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            ProgressBarView()
                .offset(y: -UIScreen.main.bounds.height * 0.4)
        }

    }
}

struct GardenPageView_Previews: PreviewProvider {
    static var previews: some View {
        GardenPageView()
    }
}
