//
//  SecondViewController.swift
//  LogIn_HW2.3
//
//  Created by Oleg Tsarenkoff on 25.05.21.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var userNameLabel: UILabel!
    var userName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let userName = self.userName else { return }
        userNameLabel.text = "Welcome, \(userName)!"
    }
    
    @IBAction func logOutTapped(_ sender: Any) {
    }
    
    
}
