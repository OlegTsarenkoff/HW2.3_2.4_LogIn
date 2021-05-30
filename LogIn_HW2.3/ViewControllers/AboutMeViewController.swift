//
//  AboutMeViewController.swift
//  LogIn_HW2.3
//
//  Created by Олег on 30.05.21.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var birthdayUser: UILabel!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    
    override func viewDidLoad() {
        view.addVerticalGradientLayer(topColor: UIColor.orange, bottomColor: UIColor.white)
        userImage.image = UIImage(named: "imageOleg")
        userName.text = "Имя пользователя: \(UserData().firstName) \(UserData().lastName)"
        birthdayUser.text = "Дата рождения: \(UserData().bigthdayUser)"
        country.text = "Страна: \(UserData().country)"
    }
    
}
