//
//  TypeDetailView.swift
//  Lovar
//
//  Created by Rosa Tiara Galuh on 03/05/23.
//

import SwiftUI

struct TypeDetailView: View {
    // Tree of Trust, Flowers of Understanding, Butterflies of Communication
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("cream")).opacity(0.3)
                .frame(height: UIScreen.main.bounds.height * 0.65)
                .cornerRadius(10)
                .padding()
            VStack {
                HStack {
                    Text("Tree of Trust")
                        .font(.system(size: 28))
                        .bold()
                        .foregroundColor(Color("darkBrown"))
                        .padding(.leading, 70)
                        .frame(width: 250)
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.title)
                        
                    })
                    .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding(.trailing, 40)
                Text("test")
                    .font(.system(size: 17))
                    .foregroundColor(Color("darkBrown"))
                    .frame(maxWidth: UIScreen.main.bounds.width * 0.7)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20)
                    .padding(20)
                Button {
                    
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

}

struct TypeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TypeDetailView()
    }
}



