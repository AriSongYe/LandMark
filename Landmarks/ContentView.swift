//
//  ContentView.swift
//  Landmarks
//
//  Created by  송에 on 2023/07/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Mapview()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                    .foregroundColor(.green)
                    
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
