//
//  ContentView.swift
//  Instafilter
//
//  Created by Galih Samudra on 13/09/24.
//

import SwiftUI

struct ContentView: View {
    @State private var blurAmount = 0.0
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .blur(radius: blurAmount)
            Slider(value: $blurAmount, in: 0...20)
                .onChange(of: blurAmount) { oldValue, newValue in
                    print("blur: \(oldValue) , \(newValue)")
                }
            Button("Random Blur") {
                blurAmount = Double.random(in: 0...20)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
