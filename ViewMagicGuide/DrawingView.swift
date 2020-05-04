//
//  DrawingView.swift
//  CoreAnimationDemo
//
//  Created by Chelsea Troy on 4/21/19.
//  Copyright © 2019 Chelsea Troy. All rights reserved.
//

import UIKit

class DrawingView: UIView {
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     */
    
    override func draw(_ rect: CGRect) {
        let width = rect.width
        let height = rect.height
        
        drawFace(width, height)
        drawMouth(width, height)
        drawEyes(width, height)
    }
    
    func drawEyes(_ width: CGFloat, _ height: CGFloat) {
        let leftEye = UIBezierPath(ovalIn:
            CGRect(x: width * 0.41,
                   y: (height / 2) - (width / 8),
                   width: width / 20,
                   height: height / 20
            )
        )
        
        let rightEye = UIBezierPath(ovalIn:
            CGRect(x: width * 0.53,
                   y: (height / 2) - (width / 8),
                   width: width / 20,
                   height: height / 20
            )
        )
        
        UIColor.black.setFill()
        leftEye.fill()
        rightEye.fill()
        
        leftEye.stroke()
        rightEye.stroke()
    }
    
    func drawFace(_ width: CGFloat, _ height: CGFloat) {
        let circle = UIBezierPath(ovalIn:
            CGRect(x: width / 4,
                   y: (height / 2) - (width / 4),
                   width: width / 2,
                   height: width / 2
            )
        )
        circle.lineWidth = 10
        
        UIColor.yellow.setFill()
        circle.fill()
        
        UIColor.black.setStroke()
        circle.stroke()
    }
    
    func drawMouth(_ width: CGFloat, _ height: CGFloat) {
        let arc = UIBezierPath(
            arcCenter: CGPoint(x: width / 2, y: height / 2),
            radius: width / 6,
            startAngle: 0,
            endAngle: CGFloat.pi,
            clockwise: true
        )
        UIColor.black.setStroke()
        
        arc.lineWidth = 12
        arc.lineCapStyle = .round
        arc.stroke()
    }
}

