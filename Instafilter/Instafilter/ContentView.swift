//
//  ContentView.swift
//  Instafilter
//
//  Created by Galih Samudra on 13/09/24.
//

import CoreImage
import CoreImage.CIFilterBuiltins
import SwiftUI

struct ContentView: View {
    @State private var image: Image?
    
    var body: some View {
        VStack {
            image?
                .resizable()
                .scaledToFit()
        }
        .onAppear(perform: loadImage)
    }
    
    func loadImage() {
        let inputImage = UIImage(resource: .example)
        let beginImage = CIImage(image: inputImage)
        let context = CIContext()
        let currentFilter = CIFilter.sepiaTone()
        currentFilter.inputImage = beginImage
        currentFilter.intensity = 1
        
        /// get image CIImage from currentFilter
        guard let outputImage = currentFilter.outputImage else { return }
        
        /// get CGImage from CIImage
        guard let cgImage = context.createCGImage(outputImage, from: outputImage.extent) else { return }
        
        /// convert CGImage to UIImage
        let uiImage = UIImage(cgImage: cgImage)
        
        /// convert UIImage to Image
        image = Image(uiImage: uiImage)
    }
}

#Preview {
    ContentView()
}
