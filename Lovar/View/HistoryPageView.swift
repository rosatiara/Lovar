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
                Spacer()
                    .frame(height: UIScreen.main.bounds.height*0.15)
                HStack {
                    Image(systemName: "chevron.left")
                        .resizable()
                        .frame(width: 14, height: 26)
                        .padding(.leading, 40)
                        .onTapGesture {
                            navigateToGardenPageView()
                        }
                    Spacer()
                        .frame(width: UIScreen.main.bounds.width * 0.25)
                    Text("Lovar History")
                        .font(Font.custom("Chivo-Regular", size: 28))
                    Spacer()
                        .frame(width: UIScreen.main.bounds.width * 0.3)
                }
                TopBar(selected: self.$selected).offset(y:32)
                if self.selected == 0 {
                    GardenHistory()
                } else {
                    BingoHistory()
                }
                HStack() {
                    Image("sunflower1")
                        .offset(x:80)
                    Image("sunflower1")
                        .offset(x:0)
                    Image("sunflower1")
                        .offset(x:-80)
                       
                }.offset(y:-80).border(.red)
                
            }
        }.foregroundColor(Color("darkBrown"))
        
    }
    func navigateToGardenPageView() {
            let gardenPageView = GardenPageView()
            UIApplication.shared.windows.first?.rootViewController = UIHostingController(rootView: gardenPageView)
            UIApplication.shared.windows.first?.makeKeyAndVisible()
        }
}

struct TopBar: View {
    @Binding var selected: Int
    var body: some View {
        HStack {
            Button {
                self.selected = 0
                
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 160, height: 70)
                        .foregroundColor(self.selected == 0 ? Color("historySelected") : Color("historyTab"))
                    Text("Garden")
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
                        .bold()
                        .padding(.bottom, 15)
                }
            }.overlay(RoundedRectangle(cornerRadius: 10).stroke(Color("darkBrown"), lineWidth: 2))
            
        }.offset(y:10)
        
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
                }.padding(.top, 30).padding(.leading, 60)
            }
        }
        
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
    }
}
struct HistoryPageView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryPageView()
    }
}
