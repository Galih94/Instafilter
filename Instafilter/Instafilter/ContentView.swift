//
//  ContentView.swift
//  Instafilter
//
//  Created by Galih Samudra on 13/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ShareLink(item: URL(string: "https://www.google.com")!, subject: Text("Google Here"), message: Text("Just Google it"))
    }
}

#Preview {
    ContentView()
}
