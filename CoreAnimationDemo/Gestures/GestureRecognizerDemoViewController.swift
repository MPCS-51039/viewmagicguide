//
//  GestureRecognizerDemoViewController.swift
//  CoreAnimationDemo
//
//  Created by Chelsea Troy on 4/21/19.
//  Copyright © 2019 Chelsea Troy. All rights reserved.
//

import Foundation
import UIKit

class GestureRecognizerDemoViewController: UIViewController {
    @IBOutlet weak var pennyImage: UIImageView!
    
    override func viewDidLoad() {
       super.viewDidLoad()
    self.pennyImage.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(didPan)))
    }
    
    @objc func didPan(_ recognizer: UIPanGestureRecognizer) {

        let translation = recognizer.translation(in: self.view)
        if let tokenView = recognizer.view {
            tokenView.center = CGPoint(x:self.pennyImage.center.x + translation.x,
                                       y:self.pennyImage.center.y + translation.y)
            recognizer.setTranslation(CGPoint.zero, in: self.view)
        }

    }
    
    @IBAction func rotate(_ sender: UIRotationGestureRecognizer) {
        guard let penny = sender.view else {return}
        
        if sender.state == .began || sender.state == .changed {
            penny.transform = sender.view!.transform.rotated(by: sender.rotation)
            sender.rotation = 0
        }
    }
    
//Add Pinch Gesture Recognizer
    
}
