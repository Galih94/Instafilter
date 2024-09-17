//
//  ContentView.swift
//  Instafilter
//
//  Created by Galih Samudra on 13/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ContentUnavailableView("No snippets", systemImage: "swift", description: Text("You don't have any saved snippets yet."))
    }
}

#Preview {
    ContentView()
}
