//
//  ViewController.swift
//  AllConcept
//
//  Created by apple on 2019/11/08.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signInBT: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        signInBT.designButton()
    }

    @IBAction func onClickSignUp(_ sender: CustomButton) {
    }
    @IBAction func onClickSignIn(_ sender: UIButton) {
    }
    
}

