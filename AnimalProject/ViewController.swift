//
//  ViewController.swift
//  AnimalProject
//
//  Created by Lepestok Jora on 11.12.2022.
//

import UIKit
import SpringAnimation


class ViewController: UIViewController {

    
    @IBOutlet weak var parametersTF: UITextField!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var sprinView: SpringView!
    private var animationStarted = false
    
    
    
    
    
    /*1.оздайте проект и интегрируйте в него фреймворк Spring при помощи SPM.
     
     Должна отображаться информация о текущей анимации: название и параметры анимации.
     Запуск анимации должен происходить по нажатию на кнопку. При этом на самой кнопке должно отображаться название следующей анимации.
     Анимации должны сменяться бесконечно в случайном порядке со слу  чайными значениями параметров*/
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        parametersTF.layer.cornerRadius = 50
        startButton.layer.cornerRadius = 50
    }

    
    @IBAction func btnAction(_ sender: Any) {
        
        parametersTF.text = "squeezeDown"
        
        sprinView.animation = "squeezeDown"
        sprinView.animate()

        
        sprinView.y = -50
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + 1.5, execute: {
            self.sprinView.animation = "fall"
            self.sprinView.animateTo()
        })

         
        
        
    }
    
    
    
    

}

