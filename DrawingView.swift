//
//  MoreDrawingView.swift
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
        
        let lines = UIBezierPath()
        
        lines.move(to: CGPoint(x: 0.0, y: height / 4))
        lines.addLine(to: CGPoint(x: width, y: height / 4))
        
        lines.move(to: CGPoint(x: 0.0, y: 3 * height / 4))
        lines.addLine(to: CGPoint(x: width, y: 3 * height / 4))
        
        lines.setLineDash([10, 5], count: 2, phase: 0)
        lines.lineWidth = 5
        lines.stroke()
        
        let circle = UIBezierPath(ovalIn:
            CGRect(x: width / 4,
                   y: (height / 2) - (width / 4),
                   width: width / 2,
                   height: width / 2
            )
        )
        circle.lineWidth = 10
        
        UIColor.white.setFill()
        circle.fill()
        
        UIColor.purple.setStroke()
        circle.stroke()
        
        let arc = UIBezierPath(
            arcCenter: CGPoint(x: width / 2, y: height / 2),
            radius: 140,
            startAngle: 0,
            endAngle: 2.5 * CGFloat.pi / 2,
            clockwise: true
        )
        UIColor.black.setStroke()
        
        arc.lineWidth = 12
        arc.lineCapStyle = .round
        arc.stroke()
    }
}

