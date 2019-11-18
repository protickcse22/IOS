//
//  SignUpViewController.swift
//  AllConcept
//
//  Created by apple on 2019/11/11.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    
    @IBOutlet weak var txtFullName: UITextField!
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnFacebook: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnFacebook.designButton(borderWidth: 0, borderColor: UIColor.clear)
        
        txtFullName.addRightView(image: #imageLiteral(resourceName: "user"))
        txtEmail.addRightView(image: #imageLiteral(resourceName: "email"))
        txtPassword.addRightView(image: #imageLiteral(resourceName: "eye"),isSecure: true)

    }
    
 
    

}
