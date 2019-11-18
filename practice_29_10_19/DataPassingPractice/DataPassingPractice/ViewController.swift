//
//  ViewController.swift
//  DataPassingPractice
//
//  Created by apple on 2019/10/30.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    let padding = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addPadding(to: nameTextField)
    }
    
    func addPadding(to textField : UITextField)  {
        textField.layer.cornerRadius = 10
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 2
        textField.bounds.inset(by: padding)
        
    }
    
    


}

