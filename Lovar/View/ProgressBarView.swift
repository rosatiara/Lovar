//
//  ProgressBarView.swift
//  Lovar
//
//  Created by Rosa Tiara Galuh on 27/04/23.
//

import SwiftUI


struct ProgressBarView: View {
    @State var showKnowledgeDetailView = false
    @State private var selectedKnowledge: Knowledge?
    
    var body: some View {
        ZStack() {
            VStack(spacing: 0) {
                Text("Garden of Love")
                    .font(Font.custom("Oregano-Regular", size: 34))
                    .foregroundColor(Color("darkBrown"))
                HStack (spacing: -10){
                    ForEach(knowledges) { knowledge in
                        KnowledgeIcon(knowledge: knowledge).onTapGesture {
                            selectedKnowledge = knowledge
                            showKnowledgeDetailView = true
                        }
                    }
                }
            }.offset(y: -UIScreen.main.bounds.height * 0.38)
            if let knowledge = selectedKnowledge {
                KnowledgeCardView(knowledge: knowledge)
            }
        }
    }
    
    @ViewBuilder func KnowledgeIcon(knowledge: Knowledge) -> some View {
        Image(knowledge.knowledgeIcon).resizable().frame(width: 60, height: 60)
    }
    
    @ViewBuilder func KnowledgeCardView(knowledge: Knowledge) -> some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("cream"))
                .frame(width: UIScreen.main.bounds.width - 50 , height: UIScreen.main.bounds.height * 0.6)
                .cornerRadius(20)
                .padding()
            VStack {
                HStack {
                    Spacer()
                        .frame(width: UIScreen.main.bounds.width * 0.7)
                    Button(action: {
                        withAnimation {
                            let gardenPageView = GardenPageView()
                            UIApplication.shared.windows.first?.rootViewController = UIHostingController(rootView: gardenPageView)
                            UIApplication.shared.windows.first?.makeKeyAndVisible()
                        }
                    }, label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.title)
                        
                    }).offset(x: -10, y: 0)
                }
                Text(knowledge.knowledgeTitle)
                    .font(.system(size: 28))
                    .bold()
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 220)
                Text(knowledge.knowledgeDesc)
                    .font(.system(size: 17))
                    .frame(maxWidth: UIScreen.main.bounds.width * 0.65)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 20)
                    .padding(20)
                
            }.foregroundColor(Color("darkBrown"))
            
        }
        
    }
}


struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        GardenPageView()
    }
}


