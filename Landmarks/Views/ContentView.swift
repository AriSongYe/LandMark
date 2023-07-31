//
//  ContentView.swift
//  Landmarks
//
//  Created by  송에 on 2023/07/19.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
