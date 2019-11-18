//
//  ProfileViewController.swift
//  practice1
//
//  Created by apple on 2019/10/23.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var deptLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func editButtonDidTap(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        if let editprofle = storyBoard.instantiateViewController(withIdentifier: "EditProfileViewController") as? EditProfileViewController{
//            editprofle.name = (nameLabel.text)
//            editprofle.dept = (deptLabel.text)
            editprofle.name = nameLabel.text
            editprofle.dept = deptLabel.text
            editprofle.didchangeItem = { a,b in
                self.nameLabel.text = a
                self.deptLabel.text = b
            
            }
            present(editprofle, animated: true)
            
        }
        else{
            print("Hellp")
        }
            
        
        }
        
        
}

