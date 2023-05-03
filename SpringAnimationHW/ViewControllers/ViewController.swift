//
//  ViewController.swift
//  SpringAnimationHW
//
//  Created by Александр Полочанин on 3.05.23.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    // MARK: - IBOutlets Properties
    @IBOutlet var viewAnimation: SpringView!
    
    @IBOutlet var nameLabel: SpringLabel!
    @IBOutlet var curveLabel: SpringLabel!
    @IBOutlet var forceLabel: SpringLabel!
    @IBOutlet var durationLabel: SpringLabel!
    @IBOutlet var delayLabel: SpringLabel!
    
    // MARK: - Properties
    private var animation = SpringAnimation.getAnimation()
    
    // MARK: - LifeCycle ViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        setTitleForLabels()
    }

    // MARK: - IBAction Methods
    @IBAction func runAnimation(_ sender: SpringButton) {
        viewAnimation.animation = animation.name
        viewAnimation.curve = animation.curve
        viewAnimation.force = animation.force
        viewAnimation.duration = animation.duration
        viewAnimation.delay = animation.delay
        
        viewAnimation.animate()
        setTitleForLabels()
        
        animation = SpringAnimation.getAnimation()
        sender.setTitle("Next \(animation.name)", for: .normal)
    }
    
    // MARK: - Private Methods
    private func setTitleForLabels() {
        nameLabel.text = "name: \(animation.name)"
        curveLabel.text = "curve: \(animation.curve)"
        forceLabel.text = "force: \(String(format: "%.2f", animation.force))"
        durationLabel.text = "duration: \(String(format: "%.2f",animation.duration))"
        delayLabel.text = "delay: \(String(format: "%.2f",animation.delay))"
    }
    
}

