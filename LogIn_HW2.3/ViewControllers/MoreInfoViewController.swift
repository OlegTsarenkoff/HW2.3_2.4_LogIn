//
//  MoreInfoViewController.swift
//  LogIn_HW2.3
//
//  Created by Олег on 30.05.21.
//

import UIKit

class MoreInfoViewController: UIViewController {
    @IBOutlet weak var imageBio: UIImageView!
    @IBOutlet weak var biography: UILabel!
    
    
    override func viewDidLoad() {
        view.addVerticalGradientLayer(topColor: UIColor.systemGray, bottomColor: UIColor.systemPink)
    }
    
    @IBAction func oneBio(_ sender: Any) {
        imageBio.image = UIImage(named: "imageOne")
    }
}
