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
    @EnvironmentObject private var vm: ViewModel
    @State var openCount: Int = 0
    
    @State var currentTreePhase: String = "phase1"
    var treePhases = ["phase1", "phase2", "phase3", "phase4", "phase5"]
    
    @State var treePhaseIndex = testGarden.treeSizeIndex

    var body: some View {
    
        ZStack {
            Image("gardenWithoutTree")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .overlay {
                    Image(treePhases[treePhaseIndex])
                        .offset(y: -UIScreen.main.bounds.height * 0.124)
                        .scaleEffect(1.2)
                }
            VStack {
                Rectangle()
                    .opacity(0.0001)
                    .foregroundColor(.brown)
                    .offset(x: -UIScreen.main.bounds.width * 0.35, y: UIScreen.main.bounds.height * 0.04)
                    .frame(width: 80, height: 120)
                    .onTapGesture {
                        navigateToHistoryPageView()
                        
                    }
                Rectangle() // Bingo Rock
                    .opacity(0.0001)
                    .frame(width: 100, height: 60)
                    .offset(x:-UIScreen.main.bounds.width * 0.02, y:-UIScreen.main.bounds.height * 0.06)
                    .onTapGesture {
                        navigateToBingoPageView()
                    }
            }
            .overlay {
                VStack {
                    ButterflyAreaView()
                    FlowersAreaView()
                }
            }
            ProgressBarView()
            
        }
//        .onAppear{
//            Task{
//                openCount = openCount + 1
//                if openCount < 1 {
//                    try await vm.resetContact()
//                }
//
//            }
//
//        }
        
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

struct ButterflyAreaView: View {
    var butterfliesWidthArea = UIScreen.main.bounds.width
    var butterfliesHeightArea = UIScreen.main.bounds.height * 0.3
    
    var butterflyImages = [testGarden.butterflyImages]
    var butterflyOffsets = testGarden.butterflyOffset
    var body: some View {
        ZStack {
            Rectangle()
                .opacity(0.0001)
                .frame(width: butterfliesWidthArea, height: butterfliesHeightArea)
                .offset(y: butterfliesWidthArea * 0.5)
            
            ForEach(0..<butterflyOffsets.count){ index in
                testGarden.butterflyImages[index]
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 90)
                    .position(
                        x: butterflyOffsets[index].x,
                        y: butterflyOffsets[index].y
                    )
            }
            ForEach(0..<butterflyOffsets.count){ index in
                testGarden.butterflyImages[index]
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 90)
                    .position(
                        x: butterflyOffsets[index].x,
                        y: butterflyOffsets[index].y
                    )
            }
            
        }.frame(width: butterfliesWidthArea, height: butterfliesHeightArea)
    }
    
}

struct FlowersAreaView: View {
    // for setting flowers position
    var flowersWidthArea = UIScreen.main.bounds.width
    var flowersHeightArea = UIScreen.main.bounds.height * 0.3
    
    var flowerImages = [testGarden.flowerImages]
    var flowerOffsets = testGarden.flowerOffset
    
    
    var body: some View {
        ZStack {
            Rectangle()
                .opacity(0.0001)
                .frame(width: flowersWidthArea, height: flowersHeightArea)
                .offset(y: flowersWidthArea * 0.5)
            ForEach(0..<flowerOffsets.count) { index in
                testGarden.flowerImages[index]
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .position(
                        x: flowerOffsets[index].x,
                        y: flowerOffsets[index].y
                    )
            }
            
        }.frame(maxHeight: flowersHeightArea)
        
    }
}

struct GardenPageView_Previews: PreviewProvider {
    static var previews: some View {
        GardenPageView()
    }
}
