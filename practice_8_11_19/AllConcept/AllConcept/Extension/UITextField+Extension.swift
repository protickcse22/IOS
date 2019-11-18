//
//  UITextField+Extension.swift
//  AllConcept
//
//  Created by apple on 2019/11/11.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit
extension UITextField{
    func addRightView(image: UIImage, isSecure: Bool = false)  {
        let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 30, height: 30))
        imageView.image = image
        
        if isSecure{
            let button = UIButton(frame: imageView.frame)
            button.setImage(#imageLiteral(resourceName: "eye"), for: .normal)
            button.setImage(#imageLiteral(resourceName: "close_eye"), for: .selected)
            button.isSelected = true
            button.addTarget(self, action: #selector(onCliclEye), for: .touchUpInside)
            rightView = button
            
        }
        else{

            rightView = imageView
        }
        
        rightViewMode = .always
        
    }
    @objc func onCliclEye(sender: UIButton){
        self.isSecureTextEntry = !self.isSecureTextEntry
        sender.isSelected = !sender.isSelected
        
    }
}
