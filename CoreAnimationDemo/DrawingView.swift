//
//  DrawingView.swift
//  DrawingApp
//
//  Created by Chelsea Troy on 4/20/19.
//  Copyright © 2019 Chelsea Troy. All rights reserved.
//

import UIKit

class DrawingView: UIView {
    var path: UIBezierPath!
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.darkGray
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func draw(_ rect: CGRect) {
        self.createRectangle()
        
    }
    
    func createRectangle() {
        path = UIBezierPath()
        
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        path.addLine(to: CGPoint(x: 0.0, y: self.frame.size.height))
        path.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
        path.addLine(to: CGPoint(x: self.frame.size.width, y: 0.0))
        
        path.close()
        
        UIColor.green.setFill()
        path.fill()
        
        UIColor.purple.setStroke()
        path.stroke()
    }
}

