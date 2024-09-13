//
//  ContentView.swift
//  Instafilter
//
//  Created by Galih Samudra on 13/09/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingConfirmation = false
    @State private var backgroundColor = Color.white
    
    var body: some View {
        Button("Hello world") {
            showingConfirmation = true
        }
        .frame(width: 300, height: 300)
        .foregroundStyle(.black)
        .background(backgroundColor)
        .confirmationDialog("Change Background", isPresented: $showingConfirmation) {
            Button("Red") { backgroundColor = .red }
            Button("Green") { backgroundColor = .green }
            Button("Blue") { backgroundColor = .blue }
            Button("Cancel", role: .cancel) {  }
        } message: {
            Text("Select new color")
        }
    }
}

#Preview {
    ContentView()
}
