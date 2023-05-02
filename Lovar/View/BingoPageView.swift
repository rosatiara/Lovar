//
//  BingoPageView.swift
//  Lovar
//
//  Created by Rosa Tiara Galuh on 27/04/23.
//

import SwiftUI

struct BingoPageView: View {
    @State var showDetailView = false
    
    var body: some View {
        
        /* ----------
        buat debugging doang, nanti diganti functionality-nya. (.onTapGesture di item bingo)
        */
        ZStack {
            Button("Show detail view") {
                showDetailView = true
            }
            if showDetailView {
                ItemDetailView(showDetailView: $showDetailView)
            }
        }
        // ------------ //
        
    }
}

struct BingoPageView_Previews: PreviewProvider {
    static var previews: some View {
        BingoPageView()
    }
}
