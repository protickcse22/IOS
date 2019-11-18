//
//  SignInViewController.swift
//  AllConcept
//
//  Created by apple on 2019/11/11.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtEmail.addRightView(image: #imageLiteral(resourceName: "user"))
        
        txtPassword.addRightView(image: #imageLiteral(resourceName: "eye"),isSecure: true)

    }
    

    @IBAction func onClickLogin(_ sender: Any) {
    UserDefaults.standard.set("LoggedIn", forKey: "accessToken")
        
        changeRoot()
    
    }
    
    
        

    

}
