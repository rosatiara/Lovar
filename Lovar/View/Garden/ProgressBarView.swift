//
//  ProgressBarView.swift
//  Lovar
//
//  Created by Rosa Tiara Galuh on 27/04/23.
//

import SwiftUI


struct ProgressBarView: View {
    @Binding var userInfo: User
    
    @State private var progressWidth = CGFloat(65)
    var body: some View {
        HStack{
            //Trust - 0
            HStack(spacing: -5){
                Image("ExpTree")
                    .resizable()
                    .frame(width: 60, height: 60)
                VStack(alignment: .leading, spacing: 3){
                    Text("Level \(userInfo.levelTrust)").font(.system(size: 14, weight: .regular))
                    ZStack(alignment: .leading){
                        
                        
                        Rectangle()
                            .border(.green)
                            .frame(width: progressWidth, height: 18)
                            .foregroundColor(Color("yellow"))
                        
                     
                            Image("exp2")
                                .resizable()
                                .frame(width: getWidth(progress: userInfo.progressTrust, required: userInfo.requiredProgressTrust), height: 18)
                            
                                .foregroundColor(Color("pink1"))
                            
                            
                            
                            Text("\(userInfo.progressTrust)/\(userInfo.requiredProgressTrust)")
                                .font(.system(size: 12, weight: .regular))
                            
                            
                        
                    }
                
                }
            }
            
            //Communication - 1
            HStack(spacing: -5){
                Image("ExpFlower")
                    .resizable()
                    .frame(width: 60, height: 60)
                VStack(alignment: .leading, spacing: 3){
                    Text("Level \(userInfo.levelCommunication)").font(.system(size: 14, weight: .regular))
                    ZStack(alignment: .leading){
                        Rectangle()
                            .border(.green)
                            .frame(width: progressWidth, height: 18)
                            .foregroundColor(Color("yellow"))
                   
                       
                            Image("exp2")
                                .resizable()
                                .frame(width: getWidth(progress: userInfo.progressCommunication, required: userInfo.requiredProgressCommunication), height: 18)
                                .foregroundColor(Color("pink1"))
                            
                            Text(" \(userInfo.progressCommunication)/\(userInfo.requiredProgressCommunication)")
                                .font(.system(size: 12, weight: .regular))
                        
                        
                    }
                
                }
            }
            
            //Understanding - 2
            HStack(spacing: -5){
                Image("ExpButterfly")
                    .resizable()
                    .frame(width: 60, height: 60)
                VStack(alignment: .leading, spacing: 3){
                    Text("Level \(userInfo.levelUnderstanding)").font(.system(size: 14, weight: .regular))
                    ZStack(alignment: .leading){
                        Rectangle()
                            .border(.green)
                            .frame(width: progressWidth, height: 18)
                            .foregroundColor(Color("yellow"))
                           
                 
                            Image("exp2")
                                .resizable()
                                .frame(width: getWidth(progress: userInfo.progressUnderstanding, required: userInfo.requiredProgressUnderstanding), height: 18)
                            
                                .foregroundColor(Color("pink1"))
                            
                            Text(" \(userInfo.progressUnderstanding)/\(userInfo.requiredProgressUnderstanding)")
                                .font(.system(size: 12, weight: .regular))
                            
                        
                    }
                
                }
            }
        }
    }
    func getWidth(progress: Int, required: Int) -> CGFloat{
        let width = CGFloat(Double(progress) / Double(required) * Double(progressWidth))
        
        return width
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView(userInfo: .constant(testUser))
    }
}
