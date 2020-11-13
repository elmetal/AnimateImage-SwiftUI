//
//  AnimateImage_SwiftUIApp.swift
//  AnimateImage-SwiftUI
//  
//  Created by elmetal on 2020/11/13
//  
//

import SwiftUI
import UIKit

@main
struct AnimateImage_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            AnimateImage(animateImageHandler: AnimateImageHandler(image: Bundle.main.url(forResource: "PichuFTilt", withExtension: "png")!))
        }
    }
}
