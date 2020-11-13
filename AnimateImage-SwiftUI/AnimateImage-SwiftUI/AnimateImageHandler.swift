//
//  AnimateImageHandler.swift
//  AnimateImage-SwiftUI
//  
//  Created by elmetal on 2020/11/13
//  
//

import Foundation
import Combine
import CoreGraphics
import ImageIO

final class AnimateImageHandler: ObservableObject {
    @Published var image: CGImage?
    
    private let url: CFURL
    
    private var isRunning = true
    
    init(image: URL) {
        url = image as CFURL
    }
    
    func startAnimating() {
        let status = CGAnimateImageAtURLWithBlock(url, nil) { [weak self] index, image, stop in
            guard let self = self else { return }
            self.image = image
            
            stop.pointee = !self.isRunning
        }
        
        if status != noErr { print("fail!") }
        
    }
    
    func stopAnimating() {
        self.isRunning = false
    }
}
