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
            }
            
            //Communication - 1
            HStack(spacing: -5){
                Image("ExpFlower")
                    .resizable()
                    .frame(width: 60, height: 60)
            }
            
            //Understanding - 2
            HStack(spacing: -5){
                Image("ExpButterfly")
                    .resizable()
                    .frame(width: 60, height: 60)
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
