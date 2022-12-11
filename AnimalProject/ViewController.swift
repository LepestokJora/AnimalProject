//
//  ViewController.swift
//  AnimalProject
//
//  Created by Lepestok Jora on 11.12.2022.
//

import UIKit
import SpringAnimation


class ViewController: UIViewController {

    
    @IBOutlet weak var parametersTV: UITextView!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var sprinView: SpringView!
    private var animationStarted = false
    
    private let animationArrey: [String] = ["pop",
                                            "slideLeft",
                                            "slideRight",
                                            "slideDown",
                                            "slideUp",
                                            "squeezeLeft",
                                            "squeezeRight",
                                            "squeezeDown",
                                            "squeezeUp",
                                            "fadeIn",
                                            "fadeOut",
                                            "fadeOutIn",
                                            "fadeInLeft",
                                            "fadeInRight",
                                            "fadeInDown",
                                            "fadeInUp",
                                            "zoomIn",
                                            "zoomOut",
                                            "fall",
                                            "shake",
                                            "flipX",
                                            "flipY",
                                            "morph",
                                            "squeeze",
                                            "flash",
                                            "wobble",
                                            "swing"]
    
    
    private var nextAnimation = "pop"
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        sprinView.layer.cornerRadius = 20
        parametersTV.layer.cornerRadius = 20
        startButton.layer.cornerRadius = 20
        startButton.layer.masksToBounds = true
        startButton.setTitle("Run", for: .normal)
    }

    
    @IBAction func btnAction(_ sender: Any) {
        
        sprinView.animation = nextAnimation
        nextAnimation = animationArrey.randomElement()!
        startButton.setTitle(nextAnimation, for: .normal)
        sprinView.animate()

    
        
        parametersTV.text = "X:\(sprinView.x)\nY:\(sprinView.y)\nScaleX:\(sprinView.scaleX)\nRotate:\(sprinView.rotate)"
    }
    
    
    
    

}

