//
//  AnimateImage.swift
//  AnimateImage-SwiftUI
//  
//  Created by elmetal on 2020/11/13
//  
//

import SwiftUI
import UIKit

struct AnimateImage: View {
    @ObservedObject var animateImageHandler: AnimateImageHandler
    
    var body: some View {
        Image(decorative: animateImageHandler.image ?? UIImage(named: "PichuFTilt")!.cgImage! , scale: 1.0)
            .onAppear {
                animateImageHandler.startAnimating()
            }
            .onDisappear {
                animateImageHandler.stopAnimating()
            }
    }
}

struct AnimateImage_Previews: PreviewProvider {
    static var previews: some View {
        AnimateImage(animateImageHandler: AnimateImageHandler(image: Bundle.main.url(forResource: "PichuFTilt", withExtension: "png")!))
    }
}
