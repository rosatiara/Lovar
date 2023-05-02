//
//  ContentView.swift
//  Lovar
//
//  Created by Rosa Tiara Galuh on 27/04/23.
//

import SwiftUI
import CoreData

struct ContentView: View {

    var body: some View {
        VStack {
            NavigationLink(
                destination: GardenPageView(),
                label: {
                    EmptyView()
                })
            OpeningPageView()
        }
//        BingoPageView()
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OpeningPageView()
    }
}
