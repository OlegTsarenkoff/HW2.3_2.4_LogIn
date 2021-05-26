//
//  ViewController.swift
//  LogIn_HW2.3
//
//  Created by Oleg Tsarenkoff on 25.05.21.
//

import UIKit

private var loginAndPassword = [(username: "User", password: "Password"),
                                (username: "Admin", password: "Admin")]

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var forgotNameButton: UIButton!
    @IBOutlet weak var forgotPassButton: UIButton!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController  else { return }
        dvc.userName = userNameTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        logInButton.layer.cornerRadius = 20
    }
    
    @IBAction func loginTapped(_ sender: UIButton) {
        guard userNameTF.text?.isEmpty == false && passwordTF.text?.isEmpty == false else { return }
        
        for i in 0..<loginAndPassword.count {
            if userNameTF.text == loginAndPassword[i].username && passwordTF.text == loginAndPassword[i].password {
                performSegue(withIdentifier: "detailSegue", sender: nil)
            }
        }
    }
    
    @IBAction func forgotUserNameTapped(_ sender: Any) {
        let alert = UIAlertController(title: "Oops!", message: "Your name is User \u{1F609}", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func forgotPasswordTapped(_ sender: Any) {
        let alert = UIAlertController(title: "Oops!", message: "Your password is Password \u{1F60B}", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        userNameTF.text = nil
        passwordTF.text = nil
    }
    
}
