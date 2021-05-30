//
//  SecondViewController.swift
//  LogIn_HW2.3
//
//  Created by Oleg Tsarenkoff on 25.05.21.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Добро пожаловать, \(userName)!"
        view.addVerticalGradientLayer(topColor: UIColor.yellow, bottomColor: UIColor.white)
    }
    
    @IBAction func logOutTapped(_ sender: Any) {
    }
    
    
}
