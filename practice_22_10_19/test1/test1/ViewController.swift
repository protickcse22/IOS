//
//  ViewController.swift
//  test1
//
//  Created by apple on 2019/10/22.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickEvent(_ sender: UIButton) {
        titleLable.text = "clicked"
    }
    
}

