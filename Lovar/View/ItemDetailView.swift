//
//  ItemDetailView.swift
//  Lovar
//
//  Created by Rosa Tiara Galuh on 28/04/23.
//

import SwiftUI

struct ItemDetailView: View {
    // let fact: Fact
    @Binding var showDetailView: Bool
    @Binding var columnIndex: Int
    @Binding var rowIndex: Int
    @Binding var congratsScreen: Bool
    @Binding var bingoBoard: Bingo
    @Binding var userInfo: User
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("cream")).opacity(0.3)
                .frame(height: UIScreen.main.bounds.height * 0.65)
                .cornerRadius(10)
                .padding()
            VStack {
                HStack {
                    Text("\(bingoBoard.title[rowIndex][columnIndex])")
                        .font(.system(size: 28))
                        .bold()
                        .foregroundColor(Color("darkBrown"))
                        .padding(.leading, 70)
                        .frame(width: 250)
                    
                    Button(action: {
                        withAnimation {
                            showDetailView = false
                        }
                    }, label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.title)
                        
                    })
                    .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding(.trailing, 40)
                Text("\(bingoBoard.description[rowIndex][columnIndex])")
                    .font(.system(size: 17))
                    .foregroundColor(Color("darkBrown"))
                    .frame(maxWidth: UIScreen.main.bounds.width * 0.7)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20)
                    .padding(20)
                Button {
                    if bingoBoard.type[rowIndex][columnIndex] == 0{
                       
                    }else if bingoBoard.type[rowIndex][columnIndex] == 1{
                        testGarden.butterflyOffset.append(CGPoint(x: .random(in: 0..<UIScreen.main.bounds.width), y: .random(in: 0..<UIScreen.main.bounds.height * 0.5)))
                    }else{
                        testGarden.flowerOffset.append(CGPoint(x: .random(in: 0..<UIScreen.main.bounds.width), y: .random(in: 0..<UIScreen.main.bounds.height * 0.1)))

                    }
                    testUser = userInfo
                    showDetailView = false
                    bingoBoard.tileCondition[rowIndex][columnIndex] = 1
                    detectBingo()
                    bingoTest = bingoBoard
                } label : {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 120, height: 40)
                        Text("Complete")
                            .bold()
                            .foregroundColor(.white)
                    }
                }
            }
        }
        .frame(width: UIScreen.main.bounds.width * 0.9)
        .background(BlurView(style: .systemUltraThinMaterial))
        .cornerRadius(15)
        .shadow(radius: 5)
        .foregroundColor(Color("darkBrown"))
    }
    
    func detectBingo(){
    //Horizontal
        for i in 0..<4{
            var bingoTemp = bingoBoard.tileCondition
            var rowBingo = true
            for j in 0..<4{
                
                if bingoBoard.tileCondition[i][j] == 1 || bingoBoard.tileCondition[i][j] == 2{
                    bingoTemp[i][j] = 2
                }else{
                    rowBingo = false
                    break
                }
            }
            if rowBingo && bingoBoard.tileCondition != bingoTemp{
                bingoBoard.tileCondition = bingoTemp
                congratsScreen = true
                
            }
        }
        //Vertical
        for i in 0..<4{
            var bingoTemp = bingoBoard.tileCondition
            var rowBingo = true
            for j in 0..<4{
                if bingoBoard.tileCondition[j][i] == 1 || bingoBoard.tileCondition[j][i] == 2{
                    bingoTemp[j][i] = 2
                }else{
                    rowBingo = false
                    break
                }
            }
            if rowBingo && bingoBoard.tileCondition != bingoTemp{
                bingoBoard.tileCondition = bingoTemp
                congratsScreen = true
                
            }
        }
        
        //Diagonal Right
        
        var bingoTemp_2 = bingoBoard.tileCondition
        var rightDiagonalBingo = true
        
        for i in 0..<4{
            if bingoBoard.tileCondition[i][i] == 1 || bingoBoard.tileCondition[i][i] == 2{
                bingoTemp_2[i][i] = 2
            }
            else{
                rightDiagonalBingo = false
                break
            }
        }
        
        if rightDiagonalBingo && bingoTemp_2 != bingoBoard.tileCondition{
            bingoBoard.tileCondition = bingoTemp_2
            congratsScreen = true
        }
        
        //Diagonal Left
        
        var bingoTemp_3 = bingoBoard.tileCondition
        var leftDiagonalBingo = true
        
        for i in 0..<4{
            if bingoBoard.tileCondition[i][3 - i] == 1 || bingoBoard.tileCondition[i][3 - i] == 2{
                bingoTemp_3[i][3 - i] = 2
            }
            else{
                leftDiagonalBingo = false
                break
            }
        }
        
        if leftDiagonalBingo && bingoTemp_3 != bingoBoard.tileCondition{
            bingoBoard.tileCondition = bingoTemp_3
            congratsScreen = true
        }

    }
}

struct BlurView: UIViewRepresentable {
    var style: UIBlurEffect.Style
    
    func makeUIView(context: UIViewRepresentableContext<BlurView>) -> UIVisualEffectView {
        let blurEffect = UIBlurEffect(style: style)
        let blurView = UIVisualEffectView(effect: blurEffect)
        return blurView
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: UIViewRepresentableContext<BlurView>) {
        uiView.effect = UIBlurEffect(style: style)
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BingoPageView(userInfo: .constant(testUser))
    }
}
