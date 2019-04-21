//
//  MoreDrawingView.swift
//  CoreAnimationDemo
//
//  Created by Chelsea Troy on 4/21/19.
//  Copyright © 2019 Susan Stevens. All rights reserved.
//

import UIKit

class MoreDrawingView: UIView {

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
        
    }


}
