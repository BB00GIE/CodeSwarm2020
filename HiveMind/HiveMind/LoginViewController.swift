//
//  LoginViewController.swift
//  HiveMind
//
//  Created by Brandon Elmore on 2/7/20.
//  Copyright © 2020 CodeSwarm. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var userNameField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginToHome(_ sender: Any) {
        let email = userNameField.text!
        let key = passwordField.text!
     
        Auth.auth().signIn(withEmail: email, password: key){ [weak self] authResult, error in
            guard self != nil else { return }
          // ...
        }
    }
    

    
    // MARK: - Navigation
/*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
 */


}
