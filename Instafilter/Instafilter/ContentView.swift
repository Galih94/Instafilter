//
//  ContentView.swift
//  Instafilter
//
//  Created by Galih Samudra on 13/09/24.
//

import StoreKit
import SwiftUI

struct ContentView: View {
    @Environment(\.requestReview) var requestReview
    var body: some View {
        Button("leave a review") {
            requestReview()
        }
    }
}

#Preview {
    ContentView()
}
