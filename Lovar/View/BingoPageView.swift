//
//  BingoPageView.swift
//  Lovar
//
//  Created by Rosa Tiara Galuh on 27/04/23.
//

import SwiftUI

struct BingoPageView: View {
    @State var showDetailView = false
    @State var showBingo = true
    @State private var bingoBoard = bingoTest
    @State private var bingoRow = 4
    @State private var selectedRowIndex = 0
    @State private var selectedColumnIndex = 0
    @State private var promptSetIndex = 0
    @State private var congratsScreen = false
    @Binding var userInfo: User
    
    var body: some View {
        if showBingo{
            ZStack{
                Color("cream").edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                        .frame(height: UIScreen.main.bounds.height * 0.1)
                    Text("LOVE!")
                        .font(Font.custom("Oregano-Regular", size: 48)).padding()
                        .foregroundColor(Color("darkBrown"))
                    
                    LazyVGrid(columns: Array(repeating: .init(.fixed(UIScreen.main.bounds.width * 0.2)), count: bingoRow), spacing: 10, content: {
                        ForEach(bingoBoard.tileCondition.indices, id: \.self) { rowIndex in
                            ForEach(bingoBoard.tileCondition[rowIndex].indices, id: \.self) { columnIndex in
                                if bingoBoard.tileCondition[rowIndex][columnIndex] == 0{
                                    Rectangle()
                                        .frame(width: UIScreen.main.bounds.width * 0.2, height: UIScreen.main.bounds.width * 0.2)
                                        .cornerRadius(6)
                                        .foregroundStyle(
                                            Color("pink1").gradient.shadow(.inner(color: .black.opacity(0.5), radius: 4, x: -2, y: -2))
                                        )
                                        .padding(4)
                                        .onTapGesture {
                                            selectedRowIndex = rowIndex
                                            selectedColumnIndex = columnIndex
                                            showDetailView = true
                                        }
                                } else if bingoBoard.tileCondition[rowIndex][columnIndex] == 1 {
                                    ZStack{
                                        Rectangle()
                                            .frame(width: UIScreen.main.bounds.width * 0.2, height: UIScreen.main.bounds.width * 0.2)
                                            .cornerRadius(6)
                                            .foregroundStyle(
                                                Color("purple").gradient.shadow(.inner(color: .black.opacity(0.5), radius: 4, x: -2, y: -2))
                                            )
                                            .padding(4)
                                    }.overlay{
                                        if bingoBoard.type[rowIndex][columnIndex] == 0 {
                                            Image("Tree_Stamp")
                                                .resizable()
                                                .frame(width: 50, height: 50)
                                        } else if bingoBoard.type[rowIndex][columnIndex] == 1 {
                                            Image("Butterfly_Stamp")
                                                .resizable()
                                                .frame(width: 50, height: 50)
                                        } else {
                                            Image("Flower_Stamp")
                                                .resizable()
                                                .frame(width: 50, height: 50)
                                        }
                                    }
                                }
                                else { // bingo completed
                                    ZStack {
                                        Rectangle()
                                            .frame(width: UIScreen.main.bounds.width * 0.2, height: UIScreen.main.bounds.width * 0.2)
                                            .cornerRadius(6)
                                            .foregroundStyle(
                                                .yellow.gradient.shadow(.inner(color: .black.opacity(0.5), radius: 4, x: -2, y: -2))
                                            )
                                            .padding(4)
                                    }.overlay {
                                        if bingoBoard.type[rowIndex][columnIndex] == 0{
                                            Image("Tree_Stamp")
                                                .resizable()
                                                .frame(width: 50, height: 50)
                                        }else if bingoBoard.type[rowIndex][columnIndex] == 1{
                                            Image("Butterfly_Stamp")
                                                .resizable()
                                                .frame(width: 50, height: 50)
                                        }else{
                                            Image("Flower_Stamp")
                                                .resizable()
                                                .frame(width: 50, height: 50)
                                        }
                                    }
                                }
                            }
                        }
                    })
                    Image("backToGarden")
                        .scaleEffect(0.6)
                        .offset(y: 10)
                        .onTapGesture {
                            navigateToGardenPageView()
                        }
                    HStack(spacing: -160) {
                        HStack(spacing: -145) {
                            Image("babyBreathPink")
                                .scaleEffect(1.75)
                            Image("babyBreathYellow")
                        }
                        HStack(spacing: -150) {
                            Image("babyBreathPink")
                                .offset(y: -40)
                            Image("babyBreathYellow")
                                .offset(y: 0)
                            Image("babyBreathPink")
                                .offset(y: -30)
                            Image("babyBreathYellow")
                        }.offset(y: 50)
                        HStack(spacing: -145) {
                            Image("babyBreathYellow")
                                .offset(y: -10)
                                .scaleEffect(1.25)
                            Image("babyBreathPink")
                                .scaleEffect(1.75)
                        }
                    }
                    
                }.frame(width: UIScreen.main.bounds.width * 0.5)
                    .onAppear {
                        bingoBoard = bingoTest
                        var promptIndex = 0
                        for i in 0..<4 {
                            for j in 0..<4 {
                                bingoBoard.title[i][j] = promptSets[promptSetIndex][promptIndex].title
                                bingoBoard.description[i][j] = promptSets[promptSetIndex][promptIndex].description
                                bingoBoard.type[i][j] = promptSets[promptSetIndex][promptIndex].type
                                promptIndex += 1
                            }
                        }
                    }
                if(showDetailView) {
                    ItemDetailView(showDetailView: $showDetailView, columnIndex: $selectedColumnIndex, rowIndex: $selectedRowIndex, congratsScreen: $congratsScreen, bingoBoard: $bingoBoard, userInfo: $userInfo)
                }
                
                if(congratsScreen){
                    CongratulationsView(congratsScreen: $congratsScreen)
                }
            }
        } else {
            GardenPageView()
        }
    }
    
    func navigateToGardenPageView() {
        let gardenPageView = GardenPageView()
        UIApplication.shared.windows.first?.rootViewController = UIHostingController(rootView: gardenPageView)
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
    
}

struct BingoDetail: View{
    var body: some View{
        Text("s")
    }
}

struct BingoPageView_Previews: PreviewProvider {
    static var previews: some View {
        BingoPageView(userInfo: .constant(testUser))
    }
}
