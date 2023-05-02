//
//  BingoPageView.swift
//  Lovar
//
//  Created by Rosa Tiara Galuh on 27/04/23.
//

import SwiftUI

struct BingoPageView: View {
    @State var showDetailView = false
    @State private var bingoCondition = bingoTest.tileCondition
    @State private var bingoRow = 4
    @State private var selectedRowIndex = 0
    @State private var selectedColumnIndex = 0
    
    var body: some View {
        
        /* ----------
         buat debugging doang, nanti diganti functionality-nya. (.onTapGesture di item bingo)
         */
        
        ZStack{
            Color("cream").edgesIgnoringSafeArea(.all)
            VStack {
                Text("BINGO!")
                    .font(Font.custom("Chivo-Regular", size: 28)).padding()
                
                LazyVGrid(columns: Array(repeating: .init(.fixed(UIScreen.main.bounds.width * 0.2)), count: bingoRow), spacing: 10, content: {
                    ForEach(bingoCondition.indices, id: \.self) { rowIndex in
                        ForEach(bingoCondition[rowIndex].indices, id: \.self) { columnIndex in
                            if bingoCondition[rowIndex][columnIndex] == 0{
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
                            } else if bingoCondition[rowIndex][columnIndex] == 1{
                                
                                Rectangle()
                                    .frame(width: UIScreen.main.bounds.width * 0.2, height: UIScreen.main.bounds.width * 0.2)
                                    .cornerRadius(6)
                                    .foregroundStyle(
                                        .blue.gradient.shadow(.inner(color: .black.opacity(0.5), radius: 4, x: -2, y: -2))
                                    )
                                    .padding(4)
                            }
                            else{
                                Rectangle()
                                    .frame(width: UIScreen.main.bounds.width * 0.2, height: UIScreen.main.bounds.width * 0.2)
                                    .cornerRadius(6)
                                    .foregroundStyle(
                                        .yellow.gradient.shadow(.inner(color: .black.opacity(0.5), radius: 4, x: -2, y: -2))
                                    )
                                    .padding(4)
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
                
            }.border(.red).frame(width: UIScreen.main.bounds.width * 0.5)
            .onAppear {
                bingoCondition = bingoTest.tileCondition
            }
            
            if(showDetailView){
                ItemDetailView(showDetailView: $showDetailView, columnIndex: $selectedColumnIndex, rowIndex: $selectedRowIndex, bingoCondition: $bingoCondition)
            }
            
            // ------------ //
            
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
        BingoPageView()
    }
}
