//
//  ViewController.swift
//  CoreAnimationDemo
//
//  Created by Chelsea Troy on 4/21/19.
//  Copyright © 2019 Chelsea Troy. All rights reserved.
//

import UIKit

class CoreAnimationDemoViewController: UIViewController {

    @IBOutlet weak var basicAnimationView: UIView!
    @IBOutlet weak var keyframeAnimationView: UIView!
    @IBOutlet weak var springAnimationView: UIView!
    @IBOutlet weak var transitionView: UIView!
    
    let duration: CFTimeInterval = 3
    
    @IBAction func didTapBasicAnimation(_ sender: UIButton) {
        basicAnimationView.layer.sublayers = nil
        
        let circlePath = UIBezierPath(ovalIn: CGRect(x: 50, y: 20, width: 100, height: 100))
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
        shapeLayer.backgroundColor = UIColor.clear.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = UIColor.custom.pink.cgColor
        shapeLayer.lineWidth = 12
        shapeLayer.lineCap = .round
        
        let strokeAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.strokeEnd))
        strokeAnimation.fromValue = 0
        strokeAnimation.toValue = 1
        strokeAnimation.duration = duration
        
        let widthAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.lineWidth))
        widthAnimation.fromValue = 1
        widthAnimation.toValue = 12
        widthAnimation.duration = duration
        
        shapeLayer.add(strokeAnimation, forKey: nil)
        shapeLayer.add(widthAnimation, forKey: nil)
        
        basicAnimationView.layer.addSublayer(shapeLayer)
    }
    
    @IBAction func didTapKeyframeAnimation(_ sender: UIButton) {
        keyframeAnimationView.layer.sublayers = nil
        
        let squarePath = UIBezierPath(rect: CGRect(x: 50, y: 20, width: 100, height: 100))
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = squarePath.cgPath
        shapeLayer.backgroundColor = UIColor.clear.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = UIColor.custom.cornflower.cgColor
        shapeLayer.lineWidth = 12
        shapeLayer.lineCap = .round
        
        let strokeAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.strokeEnd))
        strokeAnimation.fromValue = 0
        strokeAnimation.toValue = 1
        strokeAnimation.duration = duration
        
        let colorAnimation = CAKeyframeAnimation(keyPath: #keyPath(CAShapeLayer.strokeColor))
        colorAnimation.values = [UIColor.custom.teal.cgColor, UIColor.custom.pink.cgColor, UIColor.custom.cornflower.cgColor]
        colorAnimation.keyTimes = [0, 0.5, 1]
        colorAnimation.duration = duration
        
        shapeLayer.add(strokeAnimation, forKey: nil)
        shapeLayer.add(colorAnimation, forKey: nil)
        keyframeAnimationView.layer.addSublayer(shapeLayer)
    }
    
    @IBAction func didTapSpringAnimation(_ sender: UIButton) {
        springAnimationView.layer.sublayers = nil
        
        let textLayer = CATextLayer()
        textLayer.frame = CGRect(x: 50, y: 45, width: 100, height: 50)
        textLayer.backgroundColor = UIColor.custom.cornflower.cgColor
        textLayer.string = "Hello"
        textLayer.alignmentMode = CATextLayerAlignmentMode.center
        
        let springAnimation = CASpringAnimation(keyPath: #keyPath(CALayer.transform))
        springAnimation.valueFunction = CAValueFunction(name: CAValueFunctionName.scaleY)
        
        springAnimation.fromValue = 0
        springAnimation.toValue = 1
        springAnimation.duration = duration
        springAnimation.stiffness = 200
        textLayer.add(springAnimation, forKey: nil)
        springAnimationView.layer.addSublayer(textLayer)
    }
    
    @IBAction func didTapTransition(_ sender: UIButton) {
        transitionView.layer.sublayers = nil
        
        let textLayer = CATextLayer()
        textLayer.frame = CGRect(x: 50, y: 45, width: 100, height: 50)
        textLayer.backgroundColor = UIColor.custom.cornflower.cgColor
        textLayer.string = "Hello"
        textLayer.alignmentMode = CATextLayerAlignmentMode.center
        
        transitionView.layer.addSublayer(textLayer)
        
        Timer.scheduledTimer(withTimeInterval: 0.25, repeats: false) { (_) in
            let transition = CATransition()
            transition.duration = self.duration
            
            transition.type = CATransitionType.reveal
            transition.subtype = CATransitionSubtype.fromTop
            
            textLayer.add(transition, forKey: nil)
            
            textLayer.backgroundColor = UIColor.custom.pink.cgColor
            textLayer.string = "World"
        }
    }
}


