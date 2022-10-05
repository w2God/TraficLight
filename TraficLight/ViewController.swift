//
//  ViewController.swift
//  TraficLight
//
//  Created by Сергей Нам on 05.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var toggleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.backgroundColor = .red.withAlphaComponent(0.3)
        yellowView.backgroundColor = .yellow.withAlphaComponent(0.3)
        greenView.backgroundColor = .green.withAlphaComponent(0.3)
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func actionButton() {
        if redView.backgroundColor == .red.withAlphaComponent(0.3) && yellowView.backgroundColor == .yellow.withAlphaComponent(0.3) && greenView.backgroundColor == .green.withAlphaComponent(0.3) || redView.backgroundColor == .red.withAlphaComponent(0.3) && yellowView.backgroundColor == .yellow.withAlphaComponent(0.3) && greenView.backgroundColor == .green {
            redView.backgroundColor = .red
            yellowView.backgroundColor = .yellow.withAlphaComponent(0.3)
            greenView.backgroundColor = .green.withAlphaComponent(0.3)
        } else if yellowView.backgroundColor == .yellow.withAlphaComponent(0.3) && redView.backgroundColor == .red {
            yellowView.backgroundColor = .yellow
            redView.backgroundColor = .red.withAlphaComponent(0.3)
            greenView.backgroundColor = .green.withAlphaComponent(0.3)
            
        } else if greenView.backgroundColor == .green.withAlphaComponent(0.3) && yellowView.backgroundColor == .yellow {
            greenView.backgroundColor = .green
            redView.backgroundColor = .red.withAlphaComponent(0.3)
            yellowView.backgroundColor = .yellow.withAlphaComponent(0.3)
        }
    }
    
}

