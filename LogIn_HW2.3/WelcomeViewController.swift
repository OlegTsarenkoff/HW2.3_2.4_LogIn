//
//  SecondViewController.swift
//  LogIn_HW2.3
//
//  Created by Oleg Tsarenkoff on 25.05.21.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var logOutButton: UIButton!
    
    var userName: String?
    private let gradientLayer = CAGradientLayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logOutButton.layer.cornerRadius = 20
        
        guard let userName = self.userName else { return }
        userNameLabel.text = "Welcome, \(userName)!"
        
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.yellow.cgColor, UIColor.white.cgColor]
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    @IBAction func logOutTapped(_ sender: Any) {
    }
}
