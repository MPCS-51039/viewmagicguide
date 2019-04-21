//
//  DrawingDemoViewController.swift
//  CoreAnimationDemo
//
//  Created by Chelsea Troy on 4/21/19.
//  Copyright © 2019 Chelsea Troy. All rights reserved.
//

import Foundation
import UIKit

class DrawingDemoViewController: UIViewController {
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let width: CGFloat = 240.0
        let height: CGFloat = 160.0
        
        let demoView = DrawingView(frame:
            CGRect(x: self.view.frame.size.width/2 - width/2,
                   y: self.view.frame.size.height/2 - height/2,
                   width: width,
                   height: height)
        )
        
        self.view.addSubview(demoView)
    }

    
}
