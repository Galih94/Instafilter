//
//  ContentView.swift
//  Instafilter
//
//  Created by Galih Samudra on 13/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ContentUnavailableView(label: {
            Label("No Snippets", systemImage: "swift")
        }, description: {
        Text("You don't have any saved snippets yet.")
        }, actions: {
            Button("Create Snippet") {
                /// create snippet
            }
            .buttonStyle(.borderedProminent)
        })
    }
}

#Preview {
    ContentView()
}
