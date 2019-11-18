//
//  UIViewController+Extension.swift
//  AllConcept
//
//  Created by apple on 2019/11/12.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

extension UIViewController{
    func changeRoot() {
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "TabBarViewController") as? TabBarViewController{

            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            appDelegate.window?.rootViewController = vc
            appDelegate.window?.makeKeyAndVisible()
            
        }
    
    }
}
