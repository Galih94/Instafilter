//
//  ContentView.swift
//  Instafilter
//
//  Created by Galih Samudra on 13/09/24.
//

import PhotosUI
import SwiftUI

struct ContentView: View {
    @State private var pickerItems = [PhotosPickerItem]()
    @State private var selectedImages = [Image]()
    
    var body: some View {
        VStack {
            /// can use .image(), .any(), .all() and .not() as matching image
            PhotosPicker(selection: $pickerItems, maxSelectionCount: 3, matching: .not(.screenshots)) {
                Label("Select a picture", systemImage: "photo")
            }
            ScrollView {
                ForEach(0..<selectedImages.count, id: \.self) { i in
                    selectedImages[i]
                        .resizable()
                        .scaledToFit()
                }
            }
        }
        .onChange(of: pickerItems) {
            Task {
                selectedImages.removeAll()
                for item in pickerItems {
                    if let loadedImage = try await item.loadTransferable(type: Image.self) {
                        selectedImages.append(loadedImage)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
