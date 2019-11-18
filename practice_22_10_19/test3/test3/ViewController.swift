//
//  ViewController.swift
//  test3
//
//  Created by apple on 2019/10/22.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    static let identifierName = "ViewController"
    var num1 : String?
    var num2 : String?

    @IBOutlet weak var number2TextField2: UITextField!
    @IBOutlet weak var number1TextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Hello world")
    }
    

    @IBAction func addNumber(_ sender: Any) {
        num1 = number2TextField2.text
        num2 = number1TextField.text
        let storyBoard = UIStoryboard.init(name: "Main", bundle: Bundle.main)
        let resultController =  storyBoard
            .instantiateViewController(withIdentifier: ResultViewController.identifierName)
        as! ResultViewController
        
        
    
        
        resultController.x = (Int(num1!))!
        resultController.y = (Int(num2!))!

        self.show(resultController, sender: nil)
    }
    
}

