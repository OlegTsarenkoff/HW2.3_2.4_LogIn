//
//  SecondViewController.swift
//  LogIn_HW2.3
//
//  Created by Oleg Tsarenkoff on 25.05.21.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var userNameLabel: UILabel!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addVerticalGradientLayer()
        
        userNameLabel.text = "Welcome, \(userName)!"
    }
    
    // MARK: IBActions
    @IBAction func logOutTapped(_ sender: Any) {
    }
    
    // MARK: Set backgroung color
    func addVerticalGradientLayer() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.yellow.cgColor, UIColor.white.cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
