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
    @Binding var userInfo: User
    
    var body: some View {
        if showBingo{
            ZStack{
                Color("cream").edgesIgnoringSafeArea(.all)
                VStack {
                    HStack {
                        Image(systemName: "chevron.left")
                            .renderingMode(.template)
                            .scaleEffect(2)
                            .onTapGesture {
                                showBingo = false
                            }
                        Spacer().frame(width: UIScreen.main.bounds.width * 0.8)
                    }.foregroundColor(Color("darkBrown"))
                    
                    Text("BINGO!")
                        .font(Font.custom("Oregano-Regular", size: 48)).padding()
                        .foregroundColor(Color("pink1"))
                    
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
                                } else if bingoBoard.tileCondition[rowIndex][columnIndex] == 1{
                                    ZStack{
                                        Rectangle()
                                            .frame(width: UIScreen.main.bounds.width * 0.2, height: UIScreen.main.bounds.width * 0.2)
                                            .cornerRadius(6)
                                            .foregroundStyle(
                                                .blue.gradient.shadow(.inner(color: .black.opacity(0.5), radius: 4, x: -2, y: -2))
                                            )
                                            .padding(4)
                                        
                                        
                                        //                                        Image("Tree_Stamp")
                                        //                                            .resizable()
                                        //                                            .frame(width: 50, height: 50)
                                        //
                                    }.overlay{
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
                                else{
                                    ZStack{
                                        Rectangle()
                                            .frame(width: UIScreen.main.bounds.width * 0.2, height: UIScreen.main.bounds.width * 0.2)
                                            .cornerRadius(6)
                                            .foregroundStyle(
                                                .yellow.gradient.shadow(.inner(color: .black.opacity(0.5), radius: 4, x: -2, y: -2))
                                            )
                                            .padding(4)
                                    }.overlay{
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
                    
                    //                ZStack {
                    //                    Button("Show detail view") {
                    //                        showDetailView = true
                    //                    }
                    //                    if showDetailView {
                    //                        ItemDetailView(showDetailView: $showDetailView)
                    //                    }
                    //                }
                    HStack(spacing: -145) {
                        Image("grassLeft")
                        ZStack {
                            Image("sunflower1")
                                .offset(y:-50)
                            Image("grassLeft")
                        }
                        Image("grassRight")
                        Image("grassLeft")
                        ZStack {
                            Image("grassRight")
                            Image("sunflower1")
                                .offset(y:-30)
                        }
                        Image("grassLeft")
                        Image("grassRight")
                        ZStack {
                            Image("sunflower1")
                                .offset(y:-50)
                            Image("grassLeft")
                        }
                        Image("grassRight")
                    }.offset(y: 105)
                    
                }.frame(width: UIScreen.main.bounds.width * 0.5)
                    .onAppear {
                        
                    }
                
                if(showDetailView){
                    ItemDetailView(showDetailView: $showDetailView, columnIndex: $selectedColumnIndex, rowIndex: $selectedRowIndex, bingoBoard: $bingoBoard, userInfo: $userInfo)
                }
                
                // ------------ //
                
            }
        }else{
            GardenPageView()
        }
    }
    
    
//
//    func initializeBingoItems(){
//        for i in 0..<4{
//            for j in 0..<4{
//                bingoCondition[i][j] = false
//            }
//        }
//        //bingoCondition[0][0] = true
//    }
    
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
