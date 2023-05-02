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
            VStack {
                Rectangle()
                    .opacity(0.0001)
                    .foregroundColor(.brown)
                    .offset(x: -UIScreen.main.bounds.width * 0.35, y: UIScreen.main.bounds.height * 0.02)
                    .frame(width: 80, height: 30)
                    .onTapGesture {
                        navigateToHistoryPageView()
                    }
                Rectangle() // Bingo Rock
                    .opacity(0.0001)
                    .frame(width: 70, height: 40)
                    .offset(x:-UIScreen.main.bounds.width * 0.02, y:UIScreen.main.bounds.height * 0.035)
                    .onTapGesture {
                        navigateToBingoPageView()
                    }
            }
                
            ProgressBarView()
                .offset(y: -UIScreen.main.bounds.height * 0.4)
        }

    }
    func navigateToBingoPageView() {
        let bingoPageView = BingoPageView()
        UIApplication.shared.windows.first?.rootViewController = UIHostingController(rootView: bingoPageView)
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
    
    func navigateToHistoryPageView() {
        let historyPageView = HistoryPageView()
        UIApplication.shared.windows.first?.rootViewController = UIHostingController(rootView: historyPageView)
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
}

struct GardenPageView_Previews: PreviewProvider {
    static var previews: some View {
        GardenPageView()
    }
}
