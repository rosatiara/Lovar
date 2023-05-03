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
        ZStack{
            Color("cream").edgesIgnoringSafeArea(.all)
            VStack {
                Spacer().frame(height: UIScreen.main.bounds.height * 0.2)
                Text("BINGO!")
                    .font(Font.custom("Oregano-Regular", size: 48)).padding()
                    .foregroundColor(Color("darkBrown"))
                
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
                HStack(spacing: -200) {
                    Image("backToGarden")
                        .scaleEffect(0.65)
                        .offset(y: 20)
                        .onTapGesture {
                            navigateToGardenPageView()
                        }
                    Image("sunflower")
                        .scaleEffect(0.5)
                        .offset(x: 40, y: 60)
                }
                
                HStack(spacing: -150) {
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
                    
                }.offset(y:-30)
                
            }.frame(width: UIScreen.main.bounds.width * 0.5)
            .onAppear {
                bingoCondition = bingoTest.tileCondition
            }
            
            if(showDetailView){
                ItemDetailView(showDetailView: $showDetailView, columnIndex: $selectedColumnIndex, rowIndex: $selectedRowIndex, bingoCondition: $bingoCondition)
            }
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
        BingoPageView()
    }
}
