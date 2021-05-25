//
//  ViewController.swift
//  LogIn_HW2.3
//
//  Created by Oleg Tsarenkoff on 25.05.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    
    @IBAction func loginTapped(_ sender: Any) {
        
        performSegue(withIdentifier: "detailSegue", sender: nil)
        
    }
    
    @IBAction func forgotUserNameTF(_ sender: Any) {
    }
    
    @IBAction func forgotPasswordTF(_ sender: Any) {
    }
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController  else { return }
        dvc.userName = userNameTF.text
    }
    
}
