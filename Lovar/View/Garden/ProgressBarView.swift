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
        HStack (spacing: -10){
                Image("ExpTree")
                    .resizable()
                    .frame(width: 80, height: 80)
                Image("ExpFlower")
                    .resizable()
                    .frame(width: 80, height: 80)
                Image("ExpButterfly")
                    .resizable()
                    .frame(width: 80, height: 80)
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
