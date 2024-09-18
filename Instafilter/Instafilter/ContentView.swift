//
//  ContentView.swift
//  Instafilter
//
//  Created by Galih Samudra on 13/09/24.
//

import SwiftUI

struct ContentView: View {
    let example = Image(.example)
    var body: some View {
        ShareLink(item: example, preview: SharePreview("Land Preview", image: example)) {
            Label("Land Image", systemImage: "magnifyingglass.circle.fill")
        }
    }
}

#Preview {
    ContentView()
}
