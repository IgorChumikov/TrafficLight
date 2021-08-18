//
//  ViewController.swift
//  TrafficLight
//
//  Created by Игорь Чумиков on 18.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    enum Color {
        case red
        case yellow
        case green
    }
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    var color = Color.red
    let onColor: CGFloat = 1
    let offColor: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        сreateTrafficLight()
        roundOffView()
    }
    
    @IBAction func turnTrafficLight() {
        
        startButton.setTitle("NEXT", for: .normal)
        
        switch color {
            case .red:
                greenView.alpha = offColor
                redView.alpha = onColor
                color = .yellow
            case .yellow:
                redView.alpha = offColor
                yellowView.alpha = onColor
                color = .green
            case .green:
                greenView.alpha = onColor
                yellowView.alpha = offColor
                color = .red
        }
        
    }
    
    func сreateTrafficLight() {
        
        view.backgroundColor = .black
        
        startButton.setTitle("START", for: .normal)
        startButton.backgroundColor = .blue
        
        redView.backgroundColor = .red
        redView.alpha = 0.3
        
        yellowView.backgroundColor = .yellow
        yellowView.alpha = 0.3
        
        greenView.backgroundColor = .green
        greenView.alpha = 0.3
    }
    
    func roundOffView() {
        redView.layer.cornerRadius = redView.frame.size.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.size.width / 2
        greenView.layer.cornerRadius = greenView.frame.size.width / 2
        startButton.layer.cornerRadius = 10
    }
}
