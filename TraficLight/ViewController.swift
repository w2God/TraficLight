//
//  ViewController.swift
//  TraficLight
//
//  Created by Сергей Нам on 05.10.2022.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var toggleButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        toggleButton.layer.cornerRadius = 10
        
        redView.alpha = lightIsOff
        yellowView.alpha = lightIsOff
        greenView.alpha = lightIsOff
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
    }
    
    @IBAction func toggleButtonPressed(){
        toggleButton.setTitle("Next", for: .normal)
        
        switch currentLight {
        case .red:
            greenView.alpha = lightIsOff
            redView.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redView.alpha = lightIsOff
            yellowView.alpha = lightIsOn
            currentLight = .green
            
        case .green:
            yellowView.alpha = lightIsOff
            greenView.alpha = lightIsOn
            currentLight = .red
        }
    }
}

