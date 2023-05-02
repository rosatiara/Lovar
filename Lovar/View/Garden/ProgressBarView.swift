//
//  ProgressBarView.swift
//  Lovar
//
//  Created by Rosa Tiara Galuh on 27/04/23.
//

import SwiftUI


struct ProgressBarView: View {
    @State private var levelTrust = 1
    @State private var levelCommunication = 1
    @State private var levelUnderstanding = 1
    @State private var progressTrust = 3
    @State private var progressCommunication = 1
    @State private var progressUnderstanding = 3
    @State private var requiredTrust = 4
    @State private var requiredCommunication = 4
    @State private var requiredUnderstanding = 4
    
    @State private var progressWidth = CGFloat(70)
    var body: some View {
        HStack{
            //Trust - 0
            HStack{
                Circle()
                .frame(width: 40)
                .foregroundColor(colorLightPink)
                VStack(alignment: .leading, spacing: 3){
                    Text("Level \(levelTrust)").font(.system(size: 14, weight: .regular))
                    ZStack(alignment: .leading){
                        Rectangle()
                            .frame(width: progressWidth, height: 18)
                            .foregroundColor(colorLightPink)
                            .cornerRadius(5)
                        Image("exp2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: getWidth(progress: progressTrust, required: requiredTrust), height: 18)
                            .cornerRadius(5)
                            .foregroundColor(colorPink)
            
                        
                            
                            Text(" \(progressTrust)/\(requiredTrust)")
                                .font(.system(size: 12, weight: .regular))
                        
                        
                    }
                
                }
            }
            
            //Communication - 1
            HStack{
                Circle()
                .frame(width: 40)
                .foregroundColor(colorLightPink)
                VStack(alignment: .leading, spacing: 3){
                    Text("Level \(levelCommunication)").font(.system(size: 14, weight: .regular))
                    ZStack(alignment: .leading){
                        Rectangle()
                            .frame(width: progressWidth, height: 18)
                            .foregroundColor(colorLightPink)
                            .cornerRadius(5)
                        Rectangle()
                            .frame(width: getWidth(progress: progressCommunication, required: requiredCommunication), height: 18)
                            .cornerRadius(5)
                            .foregroundColor(colorPink)
                            
                            Text(" \(progressCommunication)/\(requiredCommunication)")
                                .font(.system(size: 12, weight: .regular))
                        
                        
                    }
                
                }
            }
            
            //Understanding - 2
            HStack{
                Circle()
                .frame(width: 40)
                .foregroundColor(colorLightPink)
                VStack(alignment: .leading, spacing: 3){
                    Text("Level \(levelUnderstanding)").font(.system(size: 14, weight: .regular))
                    ZStack(alignment: .leading){
                        Rectangle()
                            .frame(width: progressWidth, height: 18)
                            .foregroundColor(colorLightPink)
                            .cornerRadius(5)
                        Rectangle()
                            .frame(width: getWidth(progress: progressUnderstanding, required: requiredUnderstanding), height: 18)
                            .cornerRadius(5)
                            .foregroundColor(colorPink)
                            
                            Text(" \(progressUnderstanding)/\(requiredUnderstanding)")
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
        ProgressBarView()
    }
}
