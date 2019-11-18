//
//  ResultViewController.swift
//  test3
//
//  Created by apple on 2019/10/22.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    static let identifierName = "ResultViewController"
    var x = 0
    var y = 0
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var result = x + y
        
        resultLabel.text = "Result = \(result)"
        
    }
    
    @IBAction func dismisButton(_ sender: UIButton) {
        
        dismiss(animated: true)
    }
   
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
