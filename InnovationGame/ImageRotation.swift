//
//  ImageRotation.swift
//  
//
//  Created by HASH on 3/30/17.
//  Copyright © 2017 HJ. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func startRotating(duration: Double = 1.0, repeatCount: Float) {
        let kAnimationKey = "rotation"
        if self.layer.animation(forKey: kAnimationKey) == nil {
            let animate = CABasicAnimation(keyPath: "transform.rotation")
            animate.duration = duration
            animate.repeatCount = repeatCount
            animate.fromValue = 0.0
            let diceRoll = Float(arc4random_uniform(UInt32(720)))
            animate.toValue = 720
            self.layer.add(animate, forKey: kAnimationKey)
        }
    }
    func stopRotating() {
        let kAnimationKey = "rotation"
        
        if self.layer.animation(forKey: kAnimationKey) != nil {
            self.layer.removeAnimation(forKey: kAnimationKey)
        }
    }
    
}
