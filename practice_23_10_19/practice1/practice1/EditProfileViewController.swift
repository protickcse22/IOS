//
//  EditProfileViewController.swift
//  practice1
//
//  Created by apple on 2019/10/23.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class EditProfileViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var deptTextField: UITextField!
    
    var name : String?
    var dept : String?
    
    var didchangeItem : ((String,String)->Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.text = name
        deptTextField.text = dept
        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitButton(_ sender: UIButton) {
        if let name = nameTextField.text,
            let dept = deptTextField.text{

                   dismiss(animated: true){ self.didchangeItem?(name,dept)}
               }
    }
    
    
    

}
