//
//  HistoryPageView.swift
//  Lovar
//
//  Created by Rosa Tiara Galuh on 27/04/23.
//

import SwiftUI

struct HistoryPageView: View {
    
    @State var selected = 0
    
    var body: some View {
        ZStack {
            Color("cream").edgesIgnoringSafeArea(.all)
            VStack {
                TopBar(selected: self.$selected).offset(y:32)
                if self.selected == 0 {
                    GardenHistory()
                } else {
                    BingoHistory()
                }
            }
        }
        
    }
}

struct TopBar: View {
    @Binding var selected: Int
    var body: some View {
        Spacer()
            .frame(height: UIScreen.main.bounds.height * 0.1)
        HStack {
            Button {
                self.selected = 0
                
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 160, height: 70)
                        .foregroundColor(self.selected == 0 ? Color("historySelected") : Color("historyTab"))
                    Text("Garden")
                        .foregroundColor(Color("darkBrown"))
                        .bold()
                        .padding(.bottom, 15)
                }
                
            }.overlay(RoundedRectangle(cornerRadius: 10).stroke(Color("darkBrown"), lineWidth: 2))
            Button {
                self.selected = 1

            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 160, height: 70)
                        .foregroundColor(self.selected == 1 ? Color("historySelected") : Color("historyTab"))
                    Text("Bingo")
                        .foregroundColor(Color("darkBrown"))
                        .bold()
                        .padding(.bottom, 15)
                }
            }.overlay(RoundedRectangle(cornerRadius: 10).stroke(Color("darkBrown"), lineWidth: 2))
            
        }
        
    }
    
}

struct GardenHistory: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 330, height: 512)
                .foregroundColor(Color("historyItemsBg"))
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color("darkBrown"), lineWidth: 2))
            ScrollView() {
                let columns = Array(repeating: GridItem(.flexible()), count: 2)
                LazyVGrid(columns: columns) {
                    GardenPicture()
                }.padding(.top, 25)
            }
        }
        Spacer()
            .frame(height: UIScreen.main.bounds.height * 0.12)
        
    }
}


struct GardenPicture: View {
    var body: some View {
        VStack {
            ZStack {
//                Rectangle()
//                    .frame(width: 90, height: 146)
                Image("contoh_garden") // masukkin variable garden picture di sini
                    .resizable()
                    .frame(width: 86, height: 142)

            }
            Text("January")
                .foregroundColor(Color("darkBrown"))
                .bold()
        }
        
    }
    
}


struct BingoHistory: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 330, height: 512)
                .foregroundColor(Color("historyItemsBg"))
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color("darkBrown"), lineWidth: 2))
        }
        Spacer()
            .frame(height: UIScreen.main.bounds.height * 0.12)
    }
}
struct HistoryPageView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryPageView()
    }
}
