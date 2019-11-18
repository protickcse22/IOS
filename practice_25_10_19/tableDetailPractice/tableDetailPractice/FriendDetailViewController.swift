//
//  FriendDetailViewController.swift
//  tableDetailPractice
//
//  Created by apple on 2019/10/28.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class FriendDetailViewController: UIViewController {
    @IBOutlet weak var nameDetailLabel: UILabel!
    @IBOutlet weak var countryDetailLabel: UILabel!
    @IBOutlet weak var bioDetailLabel: UILabel!
    
    var name : String?
    var country : String?
    var bio : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameDetailLabel.text = name
        countryDetailLabel.text = country
        bioDetailLabel.text = bio
        // Do any additional setup after loading the view.
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
