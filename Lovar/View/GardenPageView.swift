//
//  GardenPageView.swift
//  Lovar
//
//  Created by Rosa Tiara Galuh on 27/04/23.
//

import SwiftUI

struct GardenPageView: View {
    @State var showDetailView = false
    @State private var userInfo = testUser
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
                    .frame(width: 75, height: 40)
                    .offset(x:-UIScreen.main.bounds.width * 0.02, y:UIScreen.main.bounds.height * 0.03)
                    .onTapGesture {
                        navigateToBingoPageView()
                    }
            }
                ProgressBarView()
        }
        
    }
    
    func navigateToBingoPageView() {
        let bingoPageView = BingoPageView(userInfo: $userInfo)
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

