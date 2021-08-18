//
//  ViewController.swift
//  TrafficLight
//
//  Created by Игорь Чумиков on 18.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        сreateTrafficLight()

    }
    
    
    @IBAction func turnTrafficLight(_ sender: UIButton) {
        
        startButton.setTitle("NEXT", for: .normal)
        
        

    }
    
    func сreateTrafficLight() {
        
        view.backgroundColor = .black
        
        startButton.setTitle("START", for: .normal)
        
        redView.backgroundColor = .red
        redView.alpha = 0.3
        
        yellowView.backgroundColor = .yellow
        yellowView.alpha = 0.3
        
        greenView.backgroundColor = .green
        greenView.alpha = 0.3
        
    }
    
}
