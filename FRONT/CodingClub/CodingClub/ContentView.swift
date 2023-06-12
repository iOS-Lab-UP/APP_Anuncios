//
//  ContentView.swift
//  CodingClub
//
//  Created by Sara Miranda on 02/05/23.
//

import SwiftUI

struct ContentView: View {
        @State private var isShowingDetail = false
        var body: some View {
            VStack {
                       if isShowingDetail {
                           Menu()
                       } else {
                           Text("Principal")
                       }
                        if !isShowingDetail {
                            Button("Toggle Detail View") {
                                        isShowingDetail.toggle() //toggle changes bools
                        }
                       }
                   }
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
