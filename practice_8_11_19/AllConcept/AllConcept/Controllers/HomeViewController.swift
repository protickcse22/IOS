//
//  HomeViewController.swift
//  AllConcept
//
//  Created by apple on 2019/11/12.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func onClickPlane(_ sender: Any) {
        guard let ticketController = storyboard?.instantiateViewController(withIdentifier: "TicketViewController") as? TicketViewController
            else {
            fatalError("Unable to create")
        }
        navigationController?.pushViewController(ticketController, animated: true )
    }
    
    @IBAction func onClickTrain(_ sender: Any) {
    }
    
    @IBAction func onClickService(_ sender: Any) {
    }
}
