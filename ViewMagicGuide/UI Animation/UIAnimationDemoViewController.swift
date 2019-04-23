//
//  UIAnimationDemoViewController.swift
//  CoreAnimationDemo
//
//  Created by Chelsea Troy on 4/21/19.
//  Copyright © 2019 Susan Stevens. All rights reserved.
//

import Foundation
import UIKit

class UIAnimationDemoViewController: UIViewController {
    
    @IBOutlet weak var animatedView: UIView!
    @IBOutlet weak var rightAnimatedMiniView: UIView!
    @IBOutlet weak var leftAnimatedMiniView: UIView!
    
    @IBAction func didTapTopView(_ sender: Any) {
        let animator = UIViewPropertyAnimator(
            duration: 0.5,
            curve: .easeIn) {
                self.animatedView.alpha = 0
                self.animatedView.frame.size = CGSize(width: 50, height: 50)
                self.animatedView.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 4)
        }
        animator.startAnimation()
    }
    
    @IBAction func didTapBottomViews(_ sender: Any) {
        let spinAnimator = UIViewPropertyAnimator(
            duration: 0.5,
            curve: .easeIn) {                self.leftAnimatedMiniView.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
                self.rightAnimatedMiniView.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        }
        
        let fadeAnimator = UIViewPropertyAnimator(
            duration: 0.5,
            curve: .easeIn) {                self.leftAnimatedMiniView.alpha = 0
                self.rightAnimatedMiniView.alpha = 0
        }
        
        spinAnimator.addCompletion { _ in
            fadeAnimator.startAnimation()
        }
        spinAnimator.startAnimation()
        
        //spring
        //fractionComplete
        //why switch the API

    }
}
