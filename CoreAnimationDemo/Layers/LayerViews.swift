//
//  LayerView.swift
//  CoreAnimationDemo
//
//  Created by Chelsea Troy on 4/22/19.
//  Copyright © 2019 Chelsea Troy. All rights reserved.
//

import Foundation
import UIKit

class BackgroundLayerView: UIView {
    override func awakeFromNib() {
        layer.backgroundColor = UIColor.orange.cgColor
        layer.cornerRadius = 20
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 5
    }
}

class DropShadowLayerView: UIView {
    override func awakeFromNib() {
        layer.shadowOpacity = 0.7
        layer.shadowRadius = 10
        layer.shadowOffset = CGSize(width: 10, height: 10)
    }
}

class GradientLayerView: UIView {
    override func awakeFromNib() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [
            UIColor.blue.cgColor,
            UIColor.cyan.cgColor
        ]
        
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        
        gradientLayer.cornerRadius = 20
        
        layer.addSublayer(gradientLayer)
    }
}

