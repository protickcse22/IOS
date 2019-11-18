//
//  DetailViewController.swift
//  Dogstagram
//
//  Created by apple on 2019/11/14.
//  Copyright © 2019 Real Life Swift. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var imageName: String!

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpImageView()
    }
    
    private func setUpImageView(){
        guard let name = imageName else {return}
        if let image = UIImage(named: name){
            imageView.image = image
        }
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
